<%@ Page Title="" Language="C#"%>

<script runat="server">

</script>
    

<asp:Content ID="Content1" ContentPlaceHolderID="seo" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="tIpt" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="body" Runat="Server">
    <style>

        .hd{
                z-index: 999;
    position: relative;
        }
.hd a {
    display: inline-block;
    height: 40px;
    padding: 0 18px;
    font-size: 18px;
}
        .hd a.lg {
    margin-right: 128px;
    height: 48px;
    background: url(/APP_themes/img/lg.png) no-repeat 0 4px;
    padding: 22px 0 0 94px;
}
        .pay {
            display:none;
            position: absolute;
            left: 40%;
            top: 30%;
            background: #fff;
            border: 1px solid #ddd;
            box-shadow: 0 0 0 999px rgba(255,255,255,0.8);
            padding: 1em;
            width: 260px;
            height: 360px;
            text-align: center;
            font-size: 16px;
            line-height: 2;
        }            .pay b {
                    border-left: 1px solid #ddd;
    border-bottom: 1px solid #ddd;
    width: 1em;
    height: 1em;
    display: inline-block;
    line-height: 1em;
    padding: 0.5em;
    float: right;
    margin: -1em -1em 0 0;
    color: #777;
    cursor:pointer;
            }
            .pay img {
                display: inline-block;
                vertical-align: middle;
                margin: 0.5em 0;
            }

            .pay p {
                font-size: 13px;
                background: #009FE8;
                color: #ffffff;
                height: 88px;
                padding: 1em 0 0;
                margin: 1em -1.2em 0 -1.2em;
            }
            .Hd a{
                color: #444;
    font-size: 16px;
    font-weight:600;
    margin-left: 2em;
            }
.m
{
    padding-right:2em;
}
            .m a{
             line-height:2.5;
             font-weight:400;
             font-size:1.2em;
            }
            .m a:before{
               /**/ content:"javascript ：";
               color:#999;
            }
            i{
                float:right;
                font-style:normal;
                font-weight:400;
                font-size:12px;
              
            }
    </style>
    <form class="m" id="ls" onclick="pay()">
    <h1>收费资讯</h1>
    <a href="#">所有类中公用的功能Base&nbsp;基础类 <i>浏览此文章需要支付3元，&nbsp;&nbsp;2019-10-18</i></a>
    <a href="#">选项卡切换功能Tabs&nbsp;选项卡切换<i>浏览此文章需要支付3元，&nbsp;&nbsp;2019-10-18</i></a>
    <a href="#">弹出窗口的功能Dialog&nbsp;弹出窗口<i>浏览此文章需要支付3元，&nbsp;&nbsp;2019-10-18</i></a>
    <a href="#">固定窗口的功能Fixed&nbsp;固定窗口<i>浏览此文章需要支付3元，&nbsp;&nbsp;2019-10-18</i></a>
    <a href="#">滚动显示（跑马灯）Rolls&nbsp;滚动显示<i>浏览此文章需要支付3元，&nbsp;&nbsp;2019-10-18</i></a>  
    <a href="#">图片切换功能Imgs&nbsp;图片切换<i>浏览此文章需要支付3元，&nbsp;&nbsp;2019-10-18</i></a>
    <a href="#">伸缩菜单功能Menus&nbsp;伸缩菜单<i>浏览此文章需要支付3元，&nbsp;&nbsp;2019-10-18</i></a>
    <a href="#">树型菜单功能Trees&nbsp;树型菜单<i>浏览此文章需要支付3元，&nbsp;&nbsp;2019-10-18</i></a>
    <a href="#">复选框全选/取消全选组件Checkbox&nbsp;全选/取消全选<i>浏览此文章需要支付3元，&nbsp;&nbsp;2019-10-18</i></a>
    <a href="#">Ajax相关功能Ajax&nbsp;异步通讯<i>浏览此文章需要支付3元，&nbsp;&nbsp;2019-10-18</i></a>
    <a href="#">显示/隐藏功能ShowHide&nbsp;显示/隐藏<i>浏览此文章需要支付3元，&nbsp;&nbsp;2019-10-18</i></a>
    <a href="#">实现波浪式切换显示功能Wave&nbsp;波浪式展示<i>浏览此文章需要支付3元，&nbsp;&nbsp;2019-10-18</i></a>
    <a href="#">模块拖动功能Drag&nbsp;拖动组件<i>浏览此文章需要支付3元，&nbsp;&nbsp;2019-10-18</i></a>
    <a href="#">Cookie的读写改删功能Cookie&nbsp;操作Cookie<i>浏览此文章需要支付3元，&nbsp;&nbsp;2019-10-18</i></a>
    <a href="#">操作表单Forms&nbsp;操作表单<i>浏览此文章需要支付3元，&nbsp;&nbsp;2019-10-18</i></a>
    <a href="#">计算输入字符数的组件Tally&nbsp;输入字符计数<i>浏览此文章需要支付3元，&nbsp;&nbsp;2019-10-18</i></a>
    <a href="#">正、负计时器的组件Timers&nbsp;正、负计时器<i>浏览此文章需要支付3元，&nbsp;&nbsp;2019-10-18</i></a>
    <a href="#">日历组件Cal&nbsp;日历组件<i>浏览此文章需要支付3元，&nbsp;&nbsp;2019-10-18</i></a>
    <a href="#">省市区三级联动Selects&nbsp;省市区三级联动<i>浏览此文章需要支付3元，&nbsp;&nbsp;2019-10-18</i></a>
    <a href="#">全屏显示/恢复组件fs&nbsp;全屏/恢复显示<i>浏览此文章需要支付3元，&nbsp;&nbsp;2019-10-18</i></a>
         <div id="pe" class="pay"><b id="cls" onclick="cp();">X</b>
        阅读全文请扫码付费<br />
        <img src="/img/zfp.jpg" width="180" /><br />
        付费3元，即可阅读全文
        <p><img src="/img/zfb.png" />请选择支付宝支付<br />
        打开支付宝扫一扫，即可进行扫码支付</p>
    </div>
        </form>
    <script>
        var pe = document.getElementById("pe");
        function pay() {
            pe.style.display = "block";
        }
        function cp(e) {
            e = e || window.event;
            C.StopBubble(e)
            pe.style.display = "none";
        }
    </script>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="bIpt" Runat="Server">
</asp:Content>

