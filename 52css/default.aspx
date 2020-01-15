<%@ Page Title="网站建设之Css" Language="C#" MasterPageFile="~/master/global.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="seo" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="tIpt" Runat="Server">
    <style>
html,
body
{
	background-color:#fff;
	position:relative;
	height:100%;
}
.hd{margin-bottom:8px;}
.lnav,
iframe
{
	display:inline-block;
	height:70%;
	background:#fff;
	padding:0px 0 8px 8px;
}
.lnav
{
	width:200px;
	text-align:left;
    overflow-y:scroll;
    background:#f9f9f9;
    padding-top:8px;
	
}
iframe
{
	width:820px;
	display:inline-block;
	vertical-align:top;
	border:none;
    
}
.lnav a{
	display:block;
	margin-left:50px;
	padding-left:8px;
	background:url(../App_Themes/img/Icons.gif) no-repeat -96px -788px;
    line-height:1.5em;
	}
.lnav a.a{
	margin-left:0px;
	font-weight:800;
	background-position:-96px -687px;
	}
.lnav a.c{
	margin-left:30px;
	font-weight:800;
}
</style>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="body" Runat="Server">
    <p class="lnav">
	 <a href="default.html" class="a" target="main">属性  Properties</a>
	
		 <a href="d_font.html" class="c" target="main">字体  Font</a>
		
			 <a href="c_font.html" target="main">font</a>
			 <a href="c_color.html" target="main">color</a>
			 <a href="c_fontfamily.html" target="main">font-family</a>
			 <a href="c_fontsize.html" target="main">font-size</a>
			 <a href="c_fontsizeadjust.html" target="main">font-size-adjust</a>
			 <a href="c_fontstretch.html" target="main">font-stretch</a>
			 <a href="c_fontstyle.html" target="main">font-style</a>
			 <a href="c_fontweight.html" target="main">font-weight</a>
			 <a href="c_textdecoration.html" target="main">text-decoration</a>
			 <a href="c_textunderlineposition.html" target="main">text-underline-position</a>
			 <a href="c_textshadow.html" target="main">text-shadow</a>
			 <a href="c_fontvariant.html" target="main">font-variant</a>
			 <a href="c_texttransform.html" target="main">text-transform</a>
			 <a href="c_lineheight.html" target="main">line-height</a>
			 <a href="c_letterspacing.html" target="main">letter-spacing</a>
			 <a href="c_wordspacing.html" target="main">word-spacing</a>
		
		 <a href="d_text.html" class="c" target="main">文本  Text</a>
		
			 <a href="c_textindent.html" target="main">text-indent</a>
			 <a href="c_textoverflow.html" target="main">text-overflow</a>
			 <a href="c_verticalalign.html" target="main">vertical-align</a>
			 <a href="c_textalign.html" target="main">text-align</a>
			 <a href="c_layoutflow.html" target="main">layout-flow</a>
			 <a href="c_writingmode.html" target="main">writing-mode</a>
			 <a href="c_direction.html" target="main">direction</a>
			 <a href="c_unicodebidi.html" target="main">unicode-bidi</a>
			 <a href="c_wordbreak.html" target="main">word-break</a>
			 <a href="c_linebreak.html" target="main">line-break</a>
			 <a href="c_whitespace.html" target="main">white-space</a>
			 <a href="c_wordwrap.html" target="main">word-wrap</a>
			 <a href="c_textautospace.html" target="main">text-autospace</a>
			 <a href="c_textkashidaspace.html" target="main">text-kashida-space</a>
			 <a href="c_textjustify.html" target="main">text-justify</a>
			 <a href="c_rubyalign.html" target="main">ruby-align</a>
			 <a href="c_rubyoverhang.html" target="main">ruby-overhang</a>
			 <a href="c_rubyposition.html" target="main">ruby-position</a>
			 <a href="c_imemode.html" target="main">ime-mode</a>
			 <a href="c_layoutgrid.html" target="main">layout-grid</a>
			 <a href="c_layoutgridchar.html" target="main">layout-grid-char</a>
			 <a href="c_layoutgridcharspacing.html" target="main">layout-grid-char-spacing</a>
			 <a href="c_layoutgridline.html" target="main">layout-grid-line</a>
			 <a href="c_layoutgridmode.html" target="main">layout-grid-mode</a>
			 <a href="c_layoutgridtype.html"" target="main">layout-grid-type</a>
		
		 <a href="d_background.html" class="c" target="main">背景  Background</a>
		
			 <a href="c_background.html" target="main">background</a>
			 <a href="c_backgroundattachment.html" target="main">background-attachment</a>
			 <a href="c_backgroundcolor.html" target="main">background-color</a>
			 <a href="c_backgroundimage.html" target="main">background-image</a>
			 <a href="c_backgroundposition.html" target="main">background-position</a>
			 <a href="c_backgroundpositionx.html" target="main">background-positionX</a>
			 <a href="c_backgroundpositionY.html" target="main">background-positionY</a>
			 <a href="c_backgroundrepeat.html" target="main">background-repeat</a>
			 <a href="c_layerbackgroundcolor.html" target="main">layer-background-color</a>
			 <a href="c_layerbackgroundimage.html" target="main">layer-background-image</a>
		
		 <a href="d_positioning.html" class="c" target="main">定位  Positioning</a>
		
			 <a href="c_position.html" target="main">position</a>
			 <a href="c_zindex.html" target="main">z-index</a>
			 <a href="c_top.html" target="main">top</a>
			 <a href="c_right.html" target="main">right</a>
			 <a href="c_bottom.html" target="main">bottom</a>
			 <a href="c_left.html" target="main">left</a>
		
		 <a href="d_dimensions.html" class="c" target="main">尺寸  Dimensions</a>
		
			 <a href="c_height.html" target="main">height</a>
			 <a href="c_maxheight.html" target="main">max-height</a>
			 <a href="c_minheight.html" target="main">min-height</a>
			 <a href="c_width.html" target="main">width</a>
			 <a href="c_maxwidth.html" target="main">max-width</a>
			 <a href="c_minwidth.html" target="main">min-width</a>
		
		 <a href="d_layout.html" class="c" target="main">布局  Layout</a>
		
			 <a href="c_clear.html" target="main">clear</a>
			 <a href="c_float.html" target="main">float</a>
			 <a href="c_clip.html" target="main">clip</a>
			 <a href="c_overflow.html" target="main">overflow</a>
			 <a href="c_overflowx.html" target="main">overflow-x</a>
			 <a href="c_overflowy.html" target="main">overflow-y</a>
			 <a href="c_display.html" target="main">display</a>
			 <a href="c_visibility.html" target="main">visibility</a>
		
		 <a href="d_margins.html" class="c" target="main">外补丁  Margins </a>
		
			 <a href="c_margin.html" target="main">margin</a>
			 <a href="c_margintop.html" target="main">margin-top</a>
			 <a href="c_marginright.html" target="main">margin-right</a>
			 <a href="c_marginbottom.html" target="main">margin-bottom</a>
			 <a href="c_marginleft.html" target="main">margin-left</a>
		
		 <a href="d_outlines.html" class="c" target="main">轮廓  Outlines</a>
		
			 <a href="c_outline.html" target="main">outline</a>
			 <a href="c_outlinecolor.html" target="main">outline-color</a>
			 <a href="c_outlinestyle.html" target="main">outline-style</a>
			 <a href="c_outlinewidth.html" target="main">outline-width</a>
		
		 <a href="d_border.html" class="c" target="main">边框  border</a>
		
			 <a href="c_border.html" target="main">border</a>
			 <a href="c_bordercolor.html" target="main">border-color</a>
			 <a href="c_borderstyle.html" target="main">border-style</a>
			 <a href="c_borderwidth.html" target="main">border-width</a>
			 <a href="c_bordertop.html" target="main">border-top</a>
			 <a href="c_bordertopcolor.html" target="main">border-top-color</a>
			 <a href="c_bordertopstyle.html" target="main">border-top-style</a>
			 <a href="c_bordertopwidth.html" target="main">border-top-width</a>
			 <a href="c_borderright.html" target="main">border-right</a>
			 <a href="c_borderrightcolor.html" target="main">border-right-color</a>
			 <a href="c_borderrightstyle.html" target="main">border-right-style</a>
			 <a href="c_borderrightwidth.html" target="main">border-right-width</a>
			 <a href="c_borderbottom.html" target="main">border-bottom</a>
			 <a href="c_borderbottomcolor.html" target="main">border-bottom-color</a>
			 <a href="c_borderbottomstyle.html" target="main">border-bottom-style</a>
			 <a href="c_borderbottomwidth.html" target="main">border-bottom-width</a>
			 <a href="c_borderleft.html" target="main">border-left</a>
			 <a href="c_borderleftcolor.html" target="main">border-left-color</a>
			 <a href="c_borderleftstyle.html" target="main">border-left-style</a>
			 <a href="c_borderleftwidth.html" target="main">border-left-width</a>
		
		 <a href="d_content.html" class="c" target="main">内容  Generated Content</a>
		
			 <a href="c_includesource.html" target="main">include-source</a>
			 <a href="c_quotes.html" target="main">quotes</a>
			 <a href="c_content.html" target="main">content</a>
			 <a href="c_counterincrement.html" target="main">counter-increment</a>
			 <a href="c_counterreset.html" target="main">counter-reset</a>
		
		 <a href="d_paddings.html" class="c" target="main">内补丁  Paddings</a>
		
			 <a href="c_padding.html" target="main">padding</a>
			 <a href="c_paddingtop.html" target="main">padding-top</a>
			 <a href="c_paddingright.html" target="main">padding-right</a>
			 <a href="c_paddingbottom.html" target="main">padding-bottom</a>
			 <a href="c_paddingleft.html" target="main">padding-left</a>
		
		 <a href="d_lists.html" class="c" target="main">列表  Lists</a>
		
			 <a href="c_liststyle.html" target="main">list-style</a>
			 <a href="c_liststyleimage.html" target="main">list-style-image</a>
			 <a href="c_liststyleposition.html" target="main">list-style-position</a>
			 <a href="c_liststyletype.html" target="main">list-style-type</a>
			 <a href="c_markeroffset.html" target="main">marker-offset</a>
		
		 <a href="d_table.html" class="c" target="main">表格  table</a>
		
			 <a href="c_bordercollapse.html" target="main">border-collapse</a>
			 <a href="c_borderspacing.html" target="main">border-spacing</a>
			 <a href="c_captionside.html" target="main">caption-side</a>
			 <a href="c_emptycells.html" target="main">empty-cells</a>
			 <a href="c_tablelayout.html" target="main">table-layout</a>
			 <a href="c_speakheader.html" target="main">speak-header</a>
		
		 <a href="d_scrollbar.html" class="c" target="main">滚动条  Scrollbar</a>
		
			 <a href="c_scrollbar3dlightcolor.html" target="main">scrollbar-3d-light-color</a>
			 <a href="c_scrollbarhighlightcolor.html" target="main">scrollbar-highlight-color</a>
			 <a href="c_scrollbarfacecolor.html" target="main">scrollbar-face-color</a>
			 <a href="c_scrollbararrowcolor.html" target="main">scrollbar-arrow-color</a>
			 <a href="c_scrollbarshadowcolor.html" target="main">scrollbar-shadow-color</a>
			 <a href="c_scrollbardarkshadowcolor.html" target="main">scrollbar-dark-shadow-color</a>
			 <a href="c_scrollbarbasecolor.html" target="main">scrollbar-base-color</a>
		
		 <a href="d_printing.html" class="c" target="main">打印  Printing</a>
		
			 <a href="c_page.html" target="main">page</a>
			 <a href="c_pagebreakafter.html" target="main">page-break-after</a>
			 <a href="c_pagebreakbefore.html" target="main">page-break-before</a>
			 <a href="c_pagebreakinside.html" target="main">page-break-inside</a>
			 <a href="c_marks.html" target="main">marks</a>
			 <a href="c_orphans.html" target="main">orphans</a>
			 <a href="c_size.html" target="main">size</a>
			 <a href="c_widows.html" target="main">widows</a>
		
		 <a href="d_aural.html" class="c" target="main">声音  Aural</a>
		
			 <a href="c_voicefamily.html" target="main">voice-family</a>
			 <a href="c_volume.html" target="main">volume</a>
			 <a href="c_elevation.html" target="main">elevation</a>
			 <a href="c_azimuth.html" target="main">azimuth</a>
			 <a href="c_stress.html" target="main">stress</a>
			 <a href="c_richness.html" target="main">richness</a>
			 <a href="c_speechrate.html" target="main">speech-rate</a>
			 <a href="c_cue.html" target="main">cue</a>
			 <a href="c_cueafter.html" target="main">cue-after</a>
			 <a href="c_cuebefore.html" target="main">cue-before</a>
			 <a href="c_pause.html" target="main">pause</a>
			 <a href="c_pauseafter.html" target="main">pause-after</a>
			 <a href="c_pausebefore.html" target="main">pause-before</a>
			 <a href="c_pitch.html" target="main">pitch</a>
			 <a href="c_pitchrange.html" target="main">pitch-range</a>
			 <a href="c_playduring.html" target="main">play-during</a>
			 <a href="c_speak.html" target="main">speak</a>
			 <a href="c_speaknumeral.html" target="main">speak-numeral</a>
			 <a href="c_speakpunctuation.html" target="main">speak-punctuation</a>
		
		 <a href="d_classification.html" class="c" target="main">其它  Classification</a>
		
			 <a href="c_cursor.html" target="main">cursor</a>
			 <a href="c_behavior.html" target="main">behavior</a>
			 <a href="c_filter.html" target="main">filter</a>
			 <a href="c_zoom.html" target="main">zoom</a>
		
	
	 <a href="d_selector.html" class="a" target="main">选择符  Selectors</a>
	
		 <a href="s_universal.html" target="main">通配选择符  Universal Selector</a>
		 <a href="s_type.html" target="main">类型选择符  Type Selectors</a>
		 <a href="s_attribute.html" target="main">属性选择符  Attribute Selectors</a>
		 <a href="s_descendant.html" target="main">包含选择符  Descendant Selectors</a>
		 <a href="s_child.html" target="main">子对象选择符  Child Selectors</a>
		 <a href="s_id.html" target="main">ID选择符  ID Selectors</a>
		 <a href="s_class.html" target="main">类选择符  Class Selectors</a>
		 <a href="s_grouping.html" target="main">选择符分组  Grouping</a>
	
	 <a href="d_pseudo.html" class="a" target="main">伪类  Pseudo-Classes</a>
	
		 <a href="p_link.html" target="main">:link</a>
		 <a href="p_hover.html" target="main">:hover</a>
		 <a href="p_active.html" target="main">:active</a>
		 <a href="p_visited.html" target="main">:visited </a>
		 <a href="p_focus.html" target="main">:focus</a>
		 <a href="p_firstletter.html" target="main">:first-letter</a>
		 <a href="p_firstline.html" target="main">:first-line</a>
		 <a href="p_firstchild.html" target="main">:first-child</a>
		 <a href="p_first.html" target="main">:first</a>
		 <a href="p_left.html" target="main">:left</a>
		 <a href="p_right.html" target="main">:right</a>
		 <a href="p_lang.html" target="main">:lang</a>
	
	 <a href="d_elements.html" class="a" target="main">伪对象  Pseudo-Elements</a>
	
		 <a href="p_before.html" target="main">:before</a>
		 <a href="p_after.html" target="main">:after</a>
	
	 <a href="d_rule.html" class="a" target="main">规则  At-Rules</a>
	
		 <a href="a_import.html" target="main">@import</a>
		 <a href="a_charset.html" target="main">@charset</a>
		 <a href="a_fontface.html" target="main">@font-face</a>
		 <a href="a_fontdef.html" target="main">@fontdef</a>
		 <a href="a_page.html" target="main">@page</a>
		 <a href="a_media.html" target="main">@media</a>
	
	 <a href="d_declaration.html" class="a" target="main">声明  Declaration</a>
	
		 <a href="i_important.html" target="main">!important</a>
	
	 <a href="d_units.html" class="a" target="main">单位 Units</a>
	
		 <a href="u_length.html" class="c" target="main">长度  Length</a>
		
			 <a href="u_length_px.html" target="main">px</a>
			 <a href="u_length_em.html" target="main">em</a>
			 <a href="u_length_ex.html" target="main">ex</a>
			 <a href="u_length_pt.html" target="main">pt</a>
			 <a href="u_length_pc.html" target="main">pc</a>
			 <a href="u_length_in.html" target="main">in</a>
			 <a href="u_length_mm.html" target="main">mm</a>
			 <a href="u_length_cm.html" target="main">cm</a>
		
		 <a href="u_color.html" class="c" target="main">颜色  Color</a>
		
			 <a href="u_color_rgb.html" target="main">rgb(RGB)</a>
			 <a href="u_color_rrggbb.html" target="main">#RRGGBB</a>
			 <a href="u_color_name.html" target="main">Color Name</a>
		
		 <a href="u_angle.html" class="c" target="main">角度  Angle</a>
		
			 <a href="u_angle_deg.html" target="main">deg</a>
			 <a href="u_angle_grad.html" target="main">grad</a>
			 <a href="u_angle_rad.html" target="main">rad</a>
		
		 <a href="u_time.html" class="c" target="main">时间  Time</a>
		
			 <a href="u_time_s.html" target="main">s</a>
			 <a href="u_time_ms.html" target="main">ms</a>
		
		 <a href="u_frequency.html" class="c" target="main">频率  Frequency</a>
		
			 <a href="u_frequency_hz.html" target="main">Hz</a>
			 <a href="u_frequency_khz.html" target="main">kHz</a>
		
	
	 <a href="d_appendix.html" class="a" target="main">附录  Appendix</a>
	
		 <a href="z_color.html" target="main">颜色表  Color Table</a>
		 <a href="z_media.html" target="main">设备类型  Media Types</a>
		 <a href="z_charset.html" target="main">字符集识别  Character Set Recognition</a>
		 <a href="z_iso.html" target="main">ISO Latin-1字符集  ISO Latin-1 Character Set</a>
		 <a href="z_additional.html" target="main">HTML附加命名实体</a>
		 <a href="z_symbol.html" target="main">特殊文本和BIDI文本的字符实体</a>
    </p>

<iframe name="main" src="default.html"></iframe>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="bIpt" Runat="Server">
</asp:Content>

