<%@ Page Title="网站建设_网站制作_网页设计_网页制作" Language="C#" %>
<script runat="server">

</script>
<asp:Content ID="seo" ContentPlaceHolderID="seo" Runat="Server">
</asp:Content>
<asp:Content ID="tIpt" ContentPlaceHolderID="tIpt" Runat="Server">
</asp:Content>
<asp:Content ID="body" ContentPlaceHolderID="body" Runat="Server">
    <form class="m">
<h1>网站建设之网站内容采集浅析</h1>
<p>“内容为王”的感叹时常不绝于耳，对于资讯类网站更甚之，内容很大程度上决定了用户量，而用户量决定平台的成败。作好内容，可以请编辑、记者等相关的人员撰写、改编。可是，在高成本、低效率面前，似乎没有谁不喜欢采集。</p>

<strong>一、思路：</strong>
      1、模拟用户访问目标网站，获取网页代码；<br />
      2、将目标网站代码分离，分析、组织需要的部分；<br />
      3、设计好数据库、表、视图、存储过程等，并将采集回来的数据过滤、入库；<br />
      4、将数据以需要的外观、结构显示到自己网站上。<br />

<strong>二、 网站建设之核心代码：</strong>

  <strong>  1、网站建设之采集部分(C#)：</strong>
<pre>

    /// <summary>
    /// 文章采集器， 根据输入网址、截取条件返回数据。
    /// </summary>
    /// <param name="url">目标地址</param>
    /// <param name="prefix">标题开始字符串</param>
    /// <param name="suffix">标题结束字符串<</param>
    /// <param name="start">正文开始字符串/param>
    /// <param name="end">正文结束字符串</param>
    /// <param name="encoding">返回编码类型</param>
    /// <param name="times">设置请求超时期限，单位为毫秒</param>
    /// <returns name="string"></returns>
    private C.C.article gArt(string url, string prefix, string suffix, string start, string end,bool inner = true, string encoding = "", int times = 5000)
    {
    string sRslt = "";
        WebResponse oWebRps = null;
        WebRequest oWebRqst = WebRequest.Create(url);
        oWebRqst.Timeout = times;
            oWebRps = oWebRqst.GetResponse();
            if (oWebRps != null)
            {
                StreamReader oStreamRd = new StreamReader(oWebRps.GetResponseStream(), Encoding.GetEncoding(encoding == "" ? (oWebRps as HttpWebResponse).CharacterSet : encoding));
                sRslt = oStreamRd.ReadToEnd();
                oStreamRd.Close();
                oWebRps.Close();
            }
           //Server.HtmlDecode(sRslt);
            int a = sRslt.IndexOf(prefix) + prefix.Length,
                b = sRslt.IndexOf(suffix, a),
                c = sRslt.IndexOf(start, b);
            if (inner)
            {
                c = c + start.Length;
            }
            int d = sRslt.IndexOf(end, c);

            C.C.article art = new C.C.article();
        art.title = sRslt.Substring(a, b - a);
        art.body = sRslt.Substring(c, d - c);
        return art;
    }
</pre>


   <strong>2、网站建设之数据库设计(Sql)：</strong>
 <pre>

create database gold on (name='golddat',filename='f:\\Database\gold.mdf');
go
use gold
/**************** 创建表 ****************/
create table article(
id int identity primary key,
title nvarchar(128) not null,
body nvarchar(max) not null,
tm datetime not null,
author nvarchar(128) not null,
origin nvarchar(128) not null
)
create table category(
id int identity primary key,
nm nvarchar(128) not null,
prtId int default 1
)
create table aInc(
aId int not null foreign key references article(id),
cId int not null foreign key references category(id),
primary key(aId,cId)
)
go

/******************** 视图 ********************/
create view arts
as
select article.id,article.title,aInc.cId from article,aInc
go
/******************** 存储过程 ********************/
create procedure addArticle
@tit nvarchar(128),
@body nvarchar(max),
@author nvarchar(128),
@origin nvarchar(128),
@cId int=1,
@tm datetime=''
as
if(@tm='')
  set @tm=getdate()
insert article values(@tit,@body,@tm,@author,@origin)
insert aInc values(scope_identity(),@cId)
go

create procedure addCategory
@nm varchar(128),
@prtId int=1
as
insert category values(@nm,@prtId)
go

create procedure art
@id int
as
select title,body,tm,author,origin from article where @id=id
go

create procedure list
@cId int,
@count int
as
select top (@count)  id,title from arts where @cId=cId
go
</pre>
网站建设过程中，网站采集必不可少，希望对大家有用
</form>
</asp:Content>
<asp:Content ID="bIpt" ContentPlaceHolderID="bIpt" Runat="Server">
</asp:Content>

