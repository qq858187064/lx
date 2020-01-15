function G(id) { return document.getElementById(id); }
function Gs(prt, tg) { return prt.getElementsByTagName(tg); }
function AddEvent(obj, ev, fn) {
    if (window.addEventListener) {
        obj.addEventListener(ev, fn, false);
    }
    else if (window.attachEvent) {
        obj.attachEvent("on" + ev, fn)
    }
}

//设置当前图像及当前图像缩略图的样式
function SetCss(M,Css)
{
    var Ms = M.parentNode.getElementsByTagName(M.tagName);
    for (var j = 0; j < Ms.length; j++)
    {
        Ms[j].className = "";
    }
    M.className = Css;
    var s = M.getAttribute("src").toString();
    I = G("Limg");
    I.src= s.replace("/Thumbnail", "");
}

//添加事件
var prt, Imgs;
function AE()
{
    //大图事件
    var I = G("Limg");
    I.prototype = new oImg(I);
    AddEvent(I, "mousemove", I.prototype.Ps);
    AddEvent(I, "click", I.prototype.Swc);


    //导航小图事件
    prt=G("Thumbnails");
    Imgs = Gs(prt, "img");
    for (var i = 0; i < Imgs.length; i++)
    {
       Imgs[i].onmouseover = function () {if(this.className!="Crt") this.className += "Ho"; };
       Imgs[i].onmouseout = function () { this.className = this.className.replace("Ho", ""); };
       Imgs[i].onclick = function ()
        {
            SetCss(this, "Crt");
        }
    }
    Nav();
    }

//根据传入图像获取其属性及方法
function oImg(oI) {
    this.oI = oI;
    var Img = this;
    this.fu = oI.src; //Full Path
    this.li = this.fu.lastIndexOf("/");     // "/" 's index
    this.di = this.fu.lastIndexOf(".");     // "." 's index
    this.bu = this.fu.substring(0, Img.li);     //Base of Url
    this.nm = this.fu.substring(Img.li + 1, Img.di);     //File Name
    this.tu = this.fu.substring(Img.di);     //Tail of Url
    this.Cx = oI.offsetWidth / 2;    //image center x
    var x;
    this.Ps = function (e) {
        var e = window.event || e;
        x = e.offsetX == undefined ? e.clientX - oI.offsetLeft - 2 : e.offsetX;
        if (x < Img.Cx) {
            oI.className = "Previous";
            oI.title = "上一张";
        }
        else {
            oI.className = "Next";
            oI.title = "下一张";
        }
    }
    this.Swc = function () {
    var Step = x > Img.Cx ? 1 : -1;
    if (Img.nm == 1 && Step != 1) {
            Sm();
        }
        else if (Img.nm == Imc && Step == 1) {
            Em();
        }
        else {
            
            oI.src = Img.bu + "/" + (parseInt(Img.nm) + parseInt(Step)) + Img.tu;
            if (Step == 1)
                Img.nm++;
            else
                Img.nm--;
        }
    }
}

//缩略图导航
function Nav()
{
    var Ls = Gs(prt, "a");
    Imgs[0].prototype = new oImg(Imgs[0])
    var Furl = Imgs[0].getAttribute("src").toString();
    var Curl = Furl.slice(0, Furl.lastIndexOf(".") - 1); //图片src前面公用部分
    for (var h = 0; h < 2; h++)
    {
        Ls[h].onclick = function ()
        {
            var Rmd = Imc % 5;
            var Fnm = parseInt(Imgs[0].getAttribute("src").slice(Imgs[0].getAttribute("src").lastIndexOf("/") + 1, -4));
            var IsFirst = Fnm ==1  ?  true: false;
            var IsLast = Fnm + 4 < Imc ? false : true;
            var IsBfLst= Fnm + 9 < Imc ? false : true;
            if (IsFirst && this.className == "FL")
            {
                Sm();
            }
            else if (IsLast && this.className == "FR")
            {
                Em();
            }
            else
            {
                for (var k = 0; k < 5; k++)
                {
                    var Cfn = Imgs[k].getAttribute("src");
                    var Cn = Imgs[k].getAttribute("src").slice(Cfn.lastIndexOf("/") + 1); //含扩展名的文件名
                    var Num = parseInt(Cn.slice(0, -4));
                    var NewNm;
                    if (this.className == "FL")
                    {
                        NewNm = Rmd==0?Num-5:k+1;
                    }
                    else
                    {
                        NewNm = (Rmd != 0 && IsBfLst) ? Imc - 4+k: Num + 5;
                    }
                    Imgs[k].setAttribute("src", Curl + Cn.replace(Num, NewNm));
                }
            }
        };
    }
}
function Sm() {
    alert("您已到最前面了！");
    return false;
}
function Em() {
    alert("您已到最后面了！");
    return false;
}