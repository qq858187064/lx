<%@ Page Title="网站建设_网站制作_网页设计_网页制作" Language="C#" %>
<script runat="server">

</script>
<asp:Content ID="seo" ContentPlaceHolderID="seo" Runat="Server">
</asp:Content>
<asp:Content ID="tIpt" ContentPlaceHolderID="tIpt" Runat="Server">
</asp:Content>
<asp:Content ID="body" ContentPlaceHolderID="body" Runat="Server">
    <form class="m">
        <h1>网站建设之301重定向浅析</h1>
        <p>301重定向，也叫301跳转，即用户在请求一个网址时，通过技术手段重定向另一个网址。通常用于网站换域名、网站权重转移或聚集等等。有趣的现象是：大部分开发者热衷于把wanfolin.com重定向到www.wanfolin.com，他们之所以这样是因为他们总是这样，仅仅为了迎合大众习惯而已，这个事情上我依然未能幸免的落入俗套，但希望强调：wanfolin.com才是真正的顶级域名，www.wanfolin.com则属于二级域。</p>
        <p>
            无论我们出于什么原因，在需要作跳转时，通常采用如下方案：<br />
            1、直接在域名上做跳转：这是最佳而且最简单的方案，但需要域名服务商技术这项目功能才行，或者到dns商家去购买转发服务，费用和域名费用差不多，像万网目前收费在200元/年左右。<br />
            2、在服务器上做跳转：如果服务器支持的话，在IIS层作跳转是个不错的选择，具体方法是，先在IIS中选中需要跳转的站点，右键单击“属性”，在弹出的网站属性对话框中选定“主目录”选项卡，选中“重定向到URL”，并输入网址如：<a href="http://www.wanfolin.com/">http://www.wanfolin.com/</a> ，同时选中下面的"资源的永久重定向"选项，确定即可。<br />
            3、用代码进行跳转：如果前两个方案都不被条件所允许的话，我们只能在应用层作实现了，然后，即便是最无奈的选择，我们也习惯于用最好的代码来实现功能。<br />
            4、特别提示：有个很重要细节，足以让我把它单独列了一项：如果我们希望只在首页进行跳转时，事件应该写在需要跳转页面的OnLoad中，而希望在整站所有页面都跳转时，事件应该写在Global.asax文件中的Application_BeginRequest事件中。这两个事件都能实现功能，但其行为却有天壤之别，那是因为一个是页面级事件，另一个是应用级事件，应用级的事件触发会波及整个站点的所有网页，特别是这个BeginRequest事件，它在每个用户发出的每个请求时都会触发。<br />
            具体实现代码如下：<br />
            //仅某一页（通常是首页）跳转<br />
            protected void Page_Load(object sender, EventArgs e)<br />
            {<br />
            if (Request.ServerVariables["SERVER_NAME"].ToLower().Equals("a.com"))<br />
            {<br />
            string newurl = "http://www.wanfolin.com/" + Request.RawUrl;<br />
            Response.Clear();<br />
            Response.StatusCode = 301;<br />
            Response.Status = "301 Moved Permanently";<br />
            Response.AddHeader("Location", newurl);<br />
            }<br />
            }<br />
            <br />
            //Global.asax文件中，整站所有页面跳转（慎用哦，确定是否真的要这样做）<br />
            void Application_BeginRequest(object sender, EventArgs e)<br />
            {<br />
            HttpContext crt= HttpContext.Current;<br />
            if (crt.Request.ServerVariables["SERVER_NAME"].ToLower().Equals("a.com"))<br />
            {<br />
            string newurl = "http://www.wanfolin.com/" + crt.Request.RawUrl;<br />
            crt.Response.Clear();<br />
            crt.Response.StatusCode = 301;<br />
            crt.Response.Status = "301 Moved Permanently";<br />
            crt.Response.AddHeader("Location", newurl);<br />
            }<br />
            }
        </p>
    </form>
</asp:Content>
<asp:Content ID="bIpt" ContentPlaceHolderID="bIpt" Runat="Server">
</asp:Content>

