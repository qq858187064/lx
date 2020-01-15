<%@ Page Title="网站建设_网站制作_网页设计_网页制作" Language="C#" %>
<script runat="server">

</script>
<asp:Content ID="seo" ContentPlaceHolderID="seo" Runat="Server">
</asp:Content>
<asp:Content ID="tIpt" ContentPlaceHolderID="tIpt" Runat="Server">
</asp:Content>
<asp:Content ID="body" ContentPlaceHolderID="body" Runat="Server">
    <form class="m">
        <h1>网站建设之javascript中的this</h1>
        <p>this，相信每位Coder都不会陌生，它甚至会让很多人"凌乱"不堪：在C#中，this引用类的当前实例；C++中有指针的概念，this指向对象自身的指针.........而在当今网络编程语言中，最有作为、也最受争议的Javascript里，这个神奇的this到底代表什么？</p>
        <p>世间唯一永恒不变的，就是变化。Javascript中的this亦是如此，this究竟是什么，完全取决于环境的变化，这得从Javascript函数的五种调用模式说起：</p>
        <strong>1、方法调用模式:</strong>
        <p>
            用该模式调用方法时，会将调用对象绑定到this，这种超级迟绑定成就了this的高度复用，此时也能用this访问对象，且能从对象中取值或修改该对象。<br />
            如：<br />
            C.Batch();<br />
            Batch中的this，指向C对象。
        </p>
        <strong> 2、函数调用模式:</strong>
        <p>
            当以该模式调用方法时，this被绑定到全局对象，我能确定这是Javascript语言的一个设计错误，但世界总是会允许错误出现，而我们不能因为错误需要继续存在而误认为它是正确的。<br />
            如：<br />
            function Batch() { alert(this); };<br />
            Batch();<br />
            此时指向this指向全局对象，在网页上运行，会弹出Window。
        </p>
        <strong>3、构造器调用模式:</strong>
        <p>
            几乎所有高级编程语言都基于类继承的，而Javascript却偏离了这一主流：它是基于原型继承的，如果在调用函数时，前面加上new，将返回该函数的prototype的新对象，并将this绑定到这个新对象上。<br />
            如：<br />
            alert(new Tabs());<br />
            此时指向this指向Tabs函数的prototype的对象，如果代码是在网页上，会弹出object。
        </p>

        <strong>4&amp;5、Apply调用模式和Call调用模式:</strong>
        <p>
            在这两种模式中，都允许我们选择this的值，第一个参数您需要绑定到this的对象 。<br />
            如：<br />
            var o=[1,2,3,4,5];<br />
            function Ca()<br />
            {<br />
            &nbsp;&nbsp;&nbsp; alert(this.join("_"));<br />
            &nbsp;}<br />
            Ca.call(o);<br />
            此时this指传入的第一个参数，此处指向o这个数组，故会弹出1_2_3_4_5。<br />
        </p>
    </form>
</asp:Content>
<asp:Content ID="bIpt" ContentPlaceHolderID="bIpt" Runat="Server">
</asp:Content>

