<script Language="JavaScript">
//***********Ĭ�����ö���.*********************
tPopWait=50;//ͣ��tWait�������ʾ��ʾ��
tPopShow=5000;//��ʾtShow�����ر���ʾ
showPopStep=20;
popOpacity=99;

//***************�ڲ���������*****************
sPop=null;
curShow=null;
tFadeOut=null;
tFadeIn=null;
tFadeWaiting=null;

document.write("<style type='text/css'id='defaultPopStyle'>");
document.write(".cPopText {  background-color: #F8F8F5;color:#000000; border: 1px #000000 solid;font-color: ;font-size: 12px; padding-right: 4px; padding-left: 4px; height: 20px; padding-top: 2px; padding-bottom: 2px; filter: Alpha(Opacity=0)}");
document.write("</style>");
document.write("<div id='dypopLayer' style='position:absolute;z-index:1000;' class='cPopText'></div>");


function showPopupText(){
var o=event.srcElement;
	MouseX=event.x;
	MouseY=event.y;
	if(o.alt!=null && o.alt!=""){o.dypop=o.alt;o.alt=""};
        if(o.title!=null && o.title!=""){o.dypop=o.title;o.title=""};
	if(o.dypop!=sPop) {
			sPop=o.dypop;
			clearTimeout(curShow);
			clearTimeout(tFadeOut);
			clearTimeout(tFadeIn);
			clearTimeout(tFadeWaiting);	
			if(sPop==null || sPop=="") {
				dypopLayer.innerHTML="";
				dypopLayer.style.filter="Alpha()";
				dypopLayer.filters.Alpha.opacity=0;	
				}
			else {
				if(o.dyclass!=null) popStyle=o.dyclass 
					else popStyle="cPopText";
				curShow=setTimeout("showIt()",tPopWait);
			}
			
	}
}

function showIt(){
		dypopLayer.className=popStyle;
		dypopLayer.innerHTML=sPop;
		popWidth=dypopLayer.clientWidth;
		popHeight=dypopLayer.clientHeight;
		if(MouseX+12+popWidth>document.body.clientWidth) popLeftAdjust=-popWidth-24
			else popLeftAdjust=0;
		if(MouseY+12+popHeight>document.body.clientHeight) popTopAdjust=-popHeight-24
			else popTopAdjust=0;
		dypopLayer.style.left=MouseX+12+document.body.scrollLeft+popLeftAdjust;
		dypopLayer.style.top=MouseY+12+document.body.scrollTop+popTopAdjust;
		dypopLayer.style.filter="Alpha(Opacity=0)";
		fadeOut();
}

function fadeOut(){
	if(dypopLayer.filters.Alpha.opacity<popOpacity) {
		dypopLayer.filters.Alpha.opacity+=showPopStep;
		tFadeOut=setTimeout("fadeOut()",1);
		}
		else {
			dypopLayer.filters.Alpha.opacity=popOpacity;
			tFadeWaiting=setTimeout("fadeIn()",tPopShow);
			}
}

function fadeIn(){
	if(dypopLayer.filters.Alpha.opacity>0) {
		dypopLayer.filters.Alpha.opacity-=1;
		tFadeIn=setTimeout("fadeIn()",1);
		}
}
document.onmouseover=showPopupText;

function CheckAll(form)  {
  for (var i=0;i<form.elements.length;i++)    {
    var e = form.elements[i];
    if (e.name != 'chkall')       e.checked = form.chkall.checked; 
   }
  }
</script>
<link href="style/style.css" rel="stylesheet" type="text/css">
<script language="JavaScript" type="text/javascript" src="draw.js"></script>
<body bgcolor="#E7EFF7">
<TABLE width="747" height=28 border=0 align="center" cellPadding=0 cellSpacing=0 style="TABLE-LAYOUT: fixed">
  <TBODY>
    <TR height=3 width="100%"> 
      <TD> <TABLE style="TABLE-LAYOUT: fixed" height=3 cellSpacing=0 cellPadding=0 width="100%" border=0>
          <TBODY>
            <TR height=1> 
              <TD width=1></TD>
              <TD width=1></TD>
              <TD width=1></TD>
              <TD bgColor=#6699CC></TD>
              <TD width=1></TD>
              <TD width=1></TD>
              <TD width=1></TD>
            </TR>
            <TR height=1> 
              <TD></TD>
              <TD bgColor=#6699CC colSpan=2></TD>
              <TD bgColor=#6699CC></TD>
              <TD bgColor=#6699CC colSpan=2></TD>
              <TD></TD>
            </TR>
            <TR height=1> 
              <TD></TD>
              <TD bgColor=#6699CC></TD>
              <TD bgColor=#6699CC colSpan=3></TD>
              <TD bgColor=#6699CC></TD>
              <TD></TD>
            </TR>
          </TBODY>
        </TABLE></TD>
    </TR>
    <TR> 
      <TD> <TABLE style="TABLE-LAYOUT: fixed" height="100%" cellSpacing=0 cellPadding=0 border=0>
          <TBODY>
            <TR> 
              <TD width=1 bgColor=#6699CC></TD>
              <TD id=oINNER bgColor=#E3ECF4> 

  <table width="747" border="0" align="center" cellpadding="3" cellspacing="0">
                  <form name="frm" method="post" action="index.asp">
    <tr> 
                      <td bgcolor="#A5C2E0" style=""> <span class="hands" onClick="Javascript:location.href='index.asp?act=main'"><strong><img src="images/Clear_0_sky.gif" width="15" height="14" hspace="5" vspace="5" align="absmiddle"></strong>��Ҫ����</span></td>
                      <td bgcolor="#A5C2E0"> <span class="hands" onClick="Javascript:location.href='index.asp?act=hour'"><strong><img src="images/Clear_0_sky.gif" width="15" height="14" hspace="5" vspace="5" align="absmiddle"></strong>24Сʱͳ��</span></td>
                      <td bgcolor="#A5C2E0"> <span class="hands" onClick="Javascript:location.href='index.asp?act=day'"><strong><img src="images/Clear_0_sky.gif" width="15" height="14" hspace="5" vspace="5" align="absmiddle"></strong>��ͳ��</span></td>
                      <td bgcolor="#A5C2E0"> <span class="hands" onClick="Javascript:location.href='index.asp?act=month'"><strong><img src="images/Clear_0_sky.gif" width="15" height="14" hspace="5" vspace="5" align="absmiddle"></strong>��ͳ��</span></td>
    </tr>
    <tr> 
                      <td bgcolor="#A5C2E0"> <span class="hands" onClick="Javascript:location.href='index.asp?act=osexp'"><strong><img src="images/Clear_0_sky.gif" width="15" height="14" hspace="5" vspace="5" align="absmiddle"></strong>ϵͳ/�����ͳ��</span> 
                      </td>
                      <td bgcolor="#A5C2E0"> <span class="hands" onClick="Javascript:location.href='index.asp?act=where'"><strong><img src="images/Clear_0_sky.gif" width="15" height="14" hspace="5" vspace="5" align="absmiddle"></strong>����ͳ��</span> 
                      </td>
                      <td bgcolor="#A5C2E0"> <span class="hands" onClick="Javascript:location.href='index.asp?act=referer'"><strong><img src="images/Clear_0_sky.gif" width="15" height="14" hspace="5" vspace="5" align="absmiddle"></strong>��Դͳ��</span>
                      </td>
                      <td bgcolor="#A5C2E0"> <span class="hands" onClick="Javascript:location.href='index.asp?act=last20'"><strong><img src="images/Clear_0_sky.gif" width="15" height="14" hspace="5" vspace="5" align="absmiddle"></strong>��������Ϣ�б�</span> </td>
    </tr>
    <tr> 
      <td colspan="4" style="height:1px" bgcolor="#6699cc"></td>
    </tr>
    <tr> 
                      <td colspan="4" align="right">ѡ��/�����Ҫ�鿴����Ŀ,���ɲ鿴��ͳ�Ƶ���Ϣ��<a href="index.asp?act=admin"><strong>ά��</strong></a></td>
    </tr></form>
  </table>

</TD>
              <TD width=1 bgColor=#6699CC></TD>
            </TR>
          </TBODY>
        </TABLE>
</TD>
    </TR>
    <TR height=3 width="100%"> 
      <TD> <TABLE style="TABLE-LAYOUT: fixed" height=3 cellSpacing=0 cellPadding=0 width="100%" border=0>
          <TBODY>
            <TR height=1> 
              <TD width=1></TD>
              <TD width=1 bgColor=#6699CC></TD>
              <TD width=1 bgColor=#6699CC></TD>
              <TD bgColor=#6699CC></TD>
              <TD width=1 bgColor=#6699CC></TD>
              <TD width=1 bgColor=#6699CC></TD>
              <TD width=1></TD>
            </TR>
            <TR height=1> 
              <TD></TD>
              <TD bgColor=#6699CC colSpan=2></TD>
              <TD bgColor=#6699CC></TD>
              <TD bgColor=#6699CC colSpan=2></TD>
              <TD></TD>
            </TR>
            <TR height=1> 
              <TD colSpan=3></TD>
              <TD bgColor=#6699CC></TD>
              <TD colSpan=3></TD>
            </TR>
          </TBODY>
        </TABLE></TD>
    </TR>
  </TBODY>
</TABLE><br>
<br>


<TABLE width="747" height=28 border=0 align="center" cellPadding=0 cellSpacing=0 style="TABLE-LAYOUT: fixed">
  <TBODY>
    <TR height=3 width="100%"> 
      <TD> <TABLE style="TABLE-LAYOUT: fixed" height=3 cellSpacing=0 cellPadding=0 width="100%" border=0>
          <TBODY>
            <TR height=1> 
              <TD width=1></TD>
              <TD width=1></TD>
              <TD width=1></TD>
              <TD bgColor=#6699CC></TD>
              <TD width=1></TD>
              <TD width=1></TD>
              <TD width=1></TD>
            </TR>
            <TR height=1> 
              <TD></TD>
              <TD bgColor=#6699CC colSpan=2></TD>
              <TD bgColor=#6699CC></TD>
              <TD bgColor=#6699CC colSpan=2></TD>
              <TD></TD>
            </TR>
            <TR height=1> 
              <TD></TD>
              <TD bgColor=#6699CC></TD>
              <TD bgColor=#6699CC colSpan=3></TD>
              <TD bgColor=#6699CC></TD>
              <TD></TD>
            </TR>
          </TBODY>
        </TABLE></TD>
    </TR>
    <TR> 
      <TD> <TABLE style="TABLE-LAYOUT: fixed" height="100%" cellSpacing=0 cellPadding=0 border=0>
          <TBODY>
            <TR> 
              <TD width=1 bgColor=#6699CC></TD>
              <TD id=oINNER bgColor=#6699CC> 
                <table width="747" border="0" cellspacing="0" cellpadding="2">
                  <tr> 
                    <td bgcolor="#A5C2E0"> <strong><img src="images/Clear_0_sky.gif" width="15" height="14" hspace="5" vspace="5" align="absmiddle"> 
                      ��վͳ�Ƽ�Ҫ��Ϣ</strong></td>
          </tr>
                  <tr> 
                    <td bgcolor="#6699CC" style="height:1px"></td>
          </tr>
          <tr> 
                    <td align="center" bgcolor="#E3ECF4"><table width=100% border=0 cellpadding=2><tr><td>��վ���ƣ�</td><td>Ǭ¡��ؾ�</td><td>��վ��ַ��</td><td><a href=www.qldzj.com target=_blank>www.qldzj.com</a></td></tr><tr><td>��վ����Ա��</td><td>Ħ�ᱦ���ʿ</td><td>��վ���䣺</td><td><a href='mailto:qldzj@qldzj.com'>qldzj@qldzj.com</a></td></tr><tr><td width=14% height=22 valign=top>��վ���ܣ�</td><td colspan=3>123</td></tr><tr><td colspan=4><hr size=1 noshade></td></tr><tr><td>�ܷ���������</td><td width=41% >611446</td><td width=14% >��ʼͳ�����ڣ�</td><td width=31% >2004/5/26</td></tr><tr><td>���շ�������</td><td>0</td><td>���·�������</td><td>0</td></tr><tr><td>ͳ��������</td><td>6570</td><td>ƽ���շ�������</td><td>93</td></tr><td>��վҳ��ˢ�£�</td><td>933669</td><td>Ԥ�Ʊ��շ�������</td><td>0</td></tr></table><br></td>
          </tr>
        </table> </TD>
              <TD width=1 bgColor=#6699CC></TD>
            </TR>
          </TBODY>
        </TABLE>
</TD>
    </TR>
    <TR height=3 width="100%"> 
      <TD> <TABLE style="TABLE-LAYOUT: fixed" height=3 cellSpacing=0 cellPadding=0 width="100%" border=0>
          <TBODY>
            <TR height=1> 
              <TD width=1></TD>
              <TD width=1 bgColor=#6699CC></TD>
              <TD width=1 bgColor=#E3ECF4></TD>
              <TD bgColor=#E3ECF4></TD>
              <TD width=1 bgColor=#E3ECF4></TD>
              <TD width=1 bgColor=#6699CC></TD>
              <TD width=1></TD>
            </TR>
            <TR height=1> 
              <TD></TD>
              <TD bgColor=#6699CC colSpan=2></TD>
              <TD bgColor=#E3ECF4></TD>
              <TD bgColor=#6699CC colSpan=2></TD>
              <TD></TD>
            </TR>
            <TR height=1> 
              <TD colSpan=3></TD>
              <TD bgColor=#6699CC></TD>
              <TD colSpan=3></TD>
            </TR>
          </TBODY>
        </TABLE></TD>
    </TR>
  </TBODY>
</TABLE>


	</p>
<p> 
  
<p>

</p>


<br>
<div id="idiv"></div>

<TABLE width="747" height=28 border=0 align="center" cellPadding=0 cellSpacing=0 style="TABLE-LAYOUT: fixed">
  <TBODY>
    <TR height=3 width="100%"> 
      <TD> <TABLE style="TABLE-LAYOUT: fixed" height=3 cellSpacing=0 cellPadding=0 width="100%" border=0>
          <TBODY>
            <TR height=1> 
              <TD width=1></TD>
              <TD width=1></TD>
              <TD width=1></TD>
              <TD bgColor=#6699CC></TD>
              <TD width=1></TD>
              <TD width=1></TD>
              <TD width=1></TD>
            </TR>
            <TR height=1> 
              <TD></TD>
              <TD bgColor=#6699CC colSpan=2></TD>
              <TD bgColor=#6699CC></TD>
              <TD bgColor=#6699CC colSpan=2></TD>
              <TD></TD>
            </TR>
            <TR height=1> 
              <TD></TD>
              <TD bgColor=#6699CC></TD>
              <TD bgColor=#6699CC colSpan=3></TD>
              <TD bgColor=#6699CC></TD>
              <TD></TD>
            </TR>
          </TBODY>
        </TABLE></TD>
    </TR>
    <TR> 
      <TD> <TABLE style="TABLE-LAYOUT: fixed" height="100%" cellSpacing=0 cellPadding=0 border=0>
          <TBODY>
            <TR> 
              <TD width=1 bgColor=#6699CC></TD>
              <TD id=oINNER bgColor=#E3ECF4> 

<table width="747" border="0" align="center" cellpadding="0" cellspacing="1">
                  <tr> 
                    <td align="center"><font color="#990000"><strong>����ͳ��</strong></font> 
                      1.5 Final &copy; <font color="#990000"><strong><a href="http://www.manbu.net" target="_blank">Manbu.net</a></strong></font>,2002-2003</td>
                  </tr>
                  <tr> 
                    <td align="center">ҳ��ִ��ʱ�䣺.000����</td>
                  </tr>
                </table>
</TD>
              <TD width=1 bgColor=#6699CC></TD>
            </TR>
          </TBODY>
        </TABLE>
</TD>
    </TR>
    <TR height=3 width="100%"> 
      <TD> <TABLE style="TABLE-LAYOUT: fixed" height=3 cellSpacing=0 cellPadding=0 width="100%" border=0>
          <TBODY>
            <TR height=1> 
              <TD width=1></TD>
              <TD width=1 bgColor=#6699CC></TD>
              <TD width=1 bgColor=#6699CC></TD>
              <TD bgColor=#6699CC></TD>
              <TD width=1 bgColor=#6699CC></TD>
              <TD width=1 bgColor=#6699CC></TD>
              <TD width=1></TD>
            </TR>
            <TR height=1> 
              <TD></TD>
              <TD bgColor=#6699CC colSpan=2></TD>
              <TD bgColor=#6699CC></TD>
              <TD bgColor=#6699CC colSpan=2></TD>
              <TD></TD>
            </TR>
            <TR height=1> 
              <TD colSpan=3></TD>
              <TD bgColor=#6699CC></TD>
              <TD colSpan=3></TD>
            </TR>
          </TBODY>
        </TABLE></TD>
    </TR>
  </TBODY>
</TABLE>    