<!DOCTYPE HTML>
<%@ Page Language="C#" inherits="Microsoft.SharePoint.WebPartPages.WebPartPage, Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register tagprefix="SharePoint" namespace="Microsoft.SharePoint.WebControls" assembly="Microsoft.SharePoint, Version=15.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<html dir="ltr" xmlns="http://www.w3.org/1999/xhtml">


<head runat="server">
<title>Business Development Organizational Deck</title>
<meta name="ProgId" content="SharePoint.WebPartPage.Document" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=10" />
<link rel="stylesheet" type="text/css" href="../bd_assets/css/org_deck_ui.css"/>

<!-- Load in jquery, knockout, and require -->
<script type="text/ecmascript" src="https://ajax.aspnetcdn.com/ajax/jQuery/jquery-1.11.3.js"></script>
<script type="text/javascript" src="../bd_assets/script/knockout-3.4.2.js"></script>
<script type="text/javascript" data-main="../bd_assets/script/app.js" src="https://cdnjs.cloudflare.com/ajax/libs/require.js/2.1.22/require.js"></script>
</head>

<header>
<div class="top"> 
<img style="position: absolute; left: 1.25%; top: 2%;"alt="VariQ Corporation" class="logo" src="../bd_assets/docs/Variq-small.png" title="VariQ Corporation" >
<div data-bind="if: page">
	<a> Capture Management Detail </a>
</div>
<div  data-bind="ifnot: page">
	<a> Proposal Management Detail </a>
</div>

</div>
<div >
	<button data-bind="click:  changePage">Change Page</button>
</div>
</header>


<body style="background-color:  #DFF4FF">
<SharePoint:SharePointForm runat="server"></SharePoint:SharePointForm>
<div data-bind="if: page">
	<!-- Page 1 -->
	<div id="image1" >
		<!-- Box1 -->
		<div class="box" style="position: absolute; left: -1.75%; top: 2.25%;">
			<div class="text" style="height: 78px; width: 132px">
				<a data-bind="html: models.box1.box" ></a>
			</div>
			<div class="hover" >
				<p data-bind="html : models.box1.hover"> </p>
				
				<ul data-bind="foreach: models.box1.links">
					<li><a data-bind="attr: {href: url}, text: name"> </a> </li>
				</ul>
			</div>
		</div>
		<!-- Box2 -->
		<div class="box" style="position: absolute; left: 14.75%; top: 1.75%; ">
			<div class="text" style="height: 71px; width: 154px">
				<a  data-bind="html: models.box2.box" > </a>
			</div>
			<div class="hover">
				<p data-bind="html : models.box2.hover"> </p>
				
				<ul data-bind="foreach: {data : models.box2.links, as : 'link'}">
					<li><a data-bind="attr: {href: link.url}, text: link.name"> </a> </li>
				</ul>
			
			
			</div>
		</div>
		<!-- Box3 -->
		<div class="box" style="position: absolute; left: -1.0%; top: 45%;">
			<div class="text" style="height: 84px; width: 116px">
				<a data-bind="html: models.box3.box" > </a>
			</div>
			<div class="hover">
				<p data-bind="html : models.box3.hover"> </p>
				
				<ul data-bind="foreach:  {data : models.box3.links, as : 'link'}">
					<li><a data-bind="attr: {href: link.url}, text: link.name"> </a> </li>
				</ul>
			
			</div>
		</div>
		<!-- Box4 -->
		<div class="box" style="position: absolute; left: -1.0%; top: 57.5%;">
			<div class="text" style="height: 84px; width: 116px">
				<a data-bind="html: models.box4.box" ></a>
			</div>
			<div class="hover" >
				<p data-bind="html : models.box4.hover"> </p>
				
				<ul data-bind="foreach: models.box4.links">
					<li><a data-bind="attr: {href: url}, text: name"> </a> </li>
				</ul>
			</div>
		</div>
		<!-- Box5 -->
		<div class="box" style="position: absolute; left: -1.0%; top: 71%; ">
			<div class="text" style="height: 82px; width: 116px">
				<a data-bind="html: models.box5.box"></a>
			</div>
			<div class="hover" >
				<p data-bind="html : models.box5.hover"> </p>
				<ul data-bind="foreach: models.box5.links">
					<li><a data-bind="attr: {href: url}, text: name"> </a> </li>
				</ul>
			</div>
		</div>
		<!-- Box6 -->
		<div class="box" style="position: absolute; left: 9.75%; top: 26.25%;">
			<div class="text" style="height: 81px; width: 134px">
				<a data-bind="html: models.box6.box" ></a>
			</div>
			<div class="hover" >
				<p data-bind="html : models.box6.hover"> </p>
				
				<ul data-bind="foreach: models.box6.links">
					<li><a data-bind="attr: {href: url}, text: name"> </a> </li>
				</ul>
			</div>
		</div>
		<!-- Box7 -->
		<div class="box" style="position: absolute; left: 21.5%; top: 12.5%; ">
			<div class="text" style="height: 156px; width: 238px">
				<a data-bind="html: models.box7.box"></a>
			</div>
			<div class="hover" >
				<p data-bind="html : models.box7.hover"> </p>
				
				<ul data-bind="foreach: models.box7.links">
					<li><a data-bind="attr: {href: url}, text: name"> </a> </li>
				</ul>
			</div>
		</div>
		<!-- Box8 -->
		<div class="box" style="position: absolute; left: 10%; top: 47%;">
			<div class="text" style="height: 80px; width: 131px">
				<a data-bind="html: models.box8.box"></a>
			</div>
			<div class="hover" >
				<p data-bind="html : models.box8.hover"> </p>
				
				<ul data-bind="foreach: models.box8.links">
					<li><a data-bind="attr: {href: url}, text: name"> </a> </li>
				</ul>
			</div>
		</div>
		<!-- Box9 -->
		<div class="box" style="position: absolute; left: 12%; top: 80.5%; width: 500px;">
			<div class="text" style=" height: 94px; width: 150px;">
				<a data-bind="html: models.box9.box" ></a>
			</div>
			<div style="position: absolute; top: -30%;" class="hover">
				<p data-bind="html : models.box9.hover"> </p>
				
				<ul data-bind="foreach: models.box9.links">
					<li><a data-bind="attr: {href: url}, text: name"> </a> </li>
				</ul>
			</div>
		</div>
		<!-- Box10 -->
		<div class="box" style="position: absolute; left: 24%; top: 80.5%; width: 500px; ">
			<div class="text" style="height: 94px; width: 197px;">
				<a data-bind="html: models.box10.box" ></a>
			</div>
			<div style="position: absolute; top: -30%;" class="hover" >
				<p data-bind="html : models.box10.hover"> </p>
				
				<ul data-bind="foreach: models.box10.links">
					<li><a data-bind="attr: {href: url}, text: name"> </a> </li>
				</ul>
			</div>
		</div>
		<!-- Box11 -->
		<div class="box" style="position: absolute; left: 39.75%; top: 7.5%;">
			<div class="text" style="height: 77px; width: 133px">
				<a data-bind="html: models.box11.box" ></a>
			</div>
			<div class="hover" >
				<p data-bind="html : models.box11.hover"> </p>
				
				<ul data-bind="foreach: models.box11.links">
					<li><a data-bind="attr: {href: url}, text: name"> </a> </li>
				</ul>
			</div>
		</div>
		<!-- Box12 -->
		<div class="box" style="position: absolute; left: 39.75%; top: 18.5%; ">
			<div class="text" style="height: 77px; width: 133px">
				<a  data-bind="html: models.box12.box" > </a>
			</div>
			<div class="hover">
				<p data-bind="html : models.box12.hover"> </p>
				
				<ul data-bind="foreach: {data : models.box12.links, as : 'link'}">
					<li><a data-bind="attr: {href: link.url}, text: link.name"> </a> </li>
				</ul>
			
			
			</div>
		</div>
		<!-- Box13 -->
		<div class="box" style="position: absolute; left: 51%; top: 1.75%;">
			<div class="text" style="height: 92px; width: 163px">
				<a data-bind="html: models.box13.box" > </a>
			</div>
			<div class="hover">
				<p data-bind="html : models.box13.hover"> </p>
				
				<ul data-bind="foreach:  {data : models.box13.links, as : 'link'}">
					<li><a data-bind="attr: {href: link.url}, text: link.name"> </a> </li>
				</ul>
			
			</div>
		</div>
		<!-- Box14 -->
		<div class="box" style="position: absolute; left: 64.5%; top: 1.75%;">
			<div class="text" style="height: 91px; width: 148px">
				<a data-bind="html: models.box14.box" ></a>
			</div>
			<div class="hover" >
				<p data-bind="html : models.box14.hover"> </p>
				
				<ul data-bind="foreach: models.box14.links">
					<li><a data-bind="attr: {href: url}, text: name"> </a> </li>
				</ul>
			</div>
		</div>
		<!-- Box15 -->
		<div class="box" style="position: absolute; left: 52%; top: 22%; ">
			<div class="text" style="height: 73px; width: 200px">
				<a data-bind="html: models.box15.box"></a>
			</div>
			<div class="hover" >
				<p data-bind="html : models.box15.hover"> </p>
				<ul data-bind="foreach: models.box15.links">
					<li><a data-bind="attr: {href: url}, text: name"> </a> </li>
				</ul>
			</div>
		</div>
		<!-- Box16 -->
		<div class="box" style="position: absolute; left: 67.5%; top: 22%;">
			<div class="text" style="height: 73px; width: 174px">
				<a data-bind="html: models.box16.box" ></a>
			</div>
			<div class="hover" >
				<p data-bind="html : models.box16.hover"> </p>
				
				<ul data-bind="foreach: models.box16.links">
					<li><a data-bind="attr: {href: url}, text: name"> </a> </li>
				</ul>
			</div>
		</div>
		<!-- Box17 -->
		<div class="box" style="position: absolute; left: 44%; top: 80%; ">
			<div class="text" style="height: 97px; width: 175px">
				<a data-bind="html: models.box17.box"></a>
			</div>
			<div style="position: absolute; top: -30%;" class="hover" >
				<p data-bind="html : models.box17.hover"> </p>
				
				<ul data-bind="foreach: models.box17.links">
					<li><a data-bind="attr: {href: url}, text: name"> </a> </li>
				</ul>
			</div>
		</div>
		<!-- Box18 -->
		<div class="box" style="position: absolute; left: 57.35%; top: 80%;">
			<div class="text" style="height: 96px; width: 126px">
				<a data-bind="html: models.box18.box"></a>
			</div>
			<div style="position: absolute; top: -30%;" class="hover" >
				<p data-bind="html : models.box18.hover"> </p>
				
				<ul data-bind="foreach: models.box18.links">
					<li><a data-bind="attr: {href: url}, text: name"> </a> </li>
				</ul>
			</div>
		</div>
		<!-- Box19 -->
		<div class="box" style="position: absolute; left: 21%; top: 65.5%;">
			<div class="text" style=" height: 56px; width: 650px">
				<a data-bind="html: models.box19.box" ></a>
			</div>
			<div class="hover" >
				<p data-bind="html : models.box19.hover"> </p>
				
				<ul data-bind="foreach: models.box19.links">
					<li><a data-bind="attr: {href: url}, text: name"> </a> </li>
				</ul>
			</div>
		</div>
		<!-- Box20 -->
		<div class="box" style="position: absolute; left: 20.75%; top: 34%;">
			<div class="text" style=" height: 24px; width: 815px">
				<a data-bind="html: models.box20.box" ></a>
			</div>
			<div class="hover" >
				<p data-bind="html : models.box20.hover"> </p>
				
				<ul data-bind="foreach: models.box20.links">
					<li><a data-bind="attr: {href: url}, text: name"> </a> </li>
				</ul>
			</div>
		</div>
		<!-- Box21 -->
		<div class="box" style="position: absolute; left: 20.75%; top: 38.25%;">
			<div class="text" style="height: 24px; width: 815px">
				<a data-bind="html: models.box21.box" ></a>
			</div>
			<div class="hover" >
				<p data-bind="html : models.box21.hover"> </p>
				
				<ul data-bind="foreach: models.box21.links">
					<li><a data-bind="attr: {href: url}, text: name"> </a> </li>
				</ul>
			</div>
		</div>
		<!-- Box22 -->
		<div class="box" style="position: absolute; left: 22%; top: 55%;; ">
			<div class="text" style="height: 54px; width: 198px">
				<a  data-bind="html: models.box22.box" > </a>
			</div>
			<div class="hover">
				<p data-bind="html : models.box22.hover"> </p>
				
				<ul data-bind="foreach: {data : models.box22.links, as : 'link'}">
					<li><a data-bind="attr: {href: link.url}, text: link.name"> </a> </li>
				</ul>
			</div>
		</div>
		<!-- Box23 -->
		<div class="box" style="position: absolute; left: 37.25%; top: 55%;  ">
			<div class="text" style="height: 54px; width: 200px">
				<a data-bind="html: models.box23.box" > </a>
			</div>
			<div class="hover">
				<p data-bind="html : models.box23.hover"> </p>
				
				<ul data-bind="foreach:  {data : models.box23.links, as : 'link'}">
					<li><a data-bind="attr: {href: link.url}, text: link.name"> </a> </li>
				</ul>
			
			</div>
		</div>
		<!-- Box24 -->
		<div class="box" style="position: absolute; left: 22%; top: 47%; ">
			<div class="text" style="height: 49px; width: 409px">
				<a data-bind="html: models.box24.box" ></a>
			</div>
			<div class="hover" >
				<p data-bind="html : models.box24.hover"> </p>
				
				<ul data-bind="foreach: models.box24.links">
					<li><a data-bind="attr: {href: url}, text: name"> </a> </li>
				</ul>
			</div>
		</div>
		<!-- Box25 -->
		<div class="box" style="position: absolute; left: 83.75%; top: 15.4%; ">
			<div class="text" style="height: 84px; width: 185px">
				<a data-bind="html: models.box25.box"></a>
			</div>
			<div class="hover" >
				<p data-bind="html : models.box25.hover"> </p>
				<ul data-bind="foreach: models.box25.links">
					<li><a data-bind="attr: {href: url}, text: name"> </a> </li>
				</ul>
			</div>
		</div>
		<!-- Box26 -->
		<div class="box" style="position: absolute; left: 83.75%; top: 34%;">
			<div class="text" style="height: 80px; width: 185px">
				<a data-bind="html: models.box26.box" ></a>
			</div>
			<div class="hover" >
				<p data-bind="html : models.box26.hover"> </p>
				
				<ul data-bind="foreach: models.box26.links">
					<li><a data-bind="attr: {href: url}, text: name"> </a> </li>
				</ul>
			</div>
		</div>
		<!-- Box27 -->
		<div class="box" style="position: absolute; left: 58%; top: 47%; ">
			<div class="text" style="height: 52px; width: 273px">
				<a data-bind="html: models.box27.box"></a>
			</div>
			<div class="hover" >
				<p data-bind="html : models.box27.hover"> </p>
				
				<ul data-bind="foreach: models.box27.links">
					<li><a data-bind="attr: {href: url}, text: name"> </a> </li>
				</ul>
			</div>
		</div>
		<!-- Box28 -->
		<div class="box" style="position: absolute; left: 76%; top: 76%;">
			<div style="height: 90px; width: 295px">
				<a data-bind="html: models.box28.box" style="font-size: 12px"></a>
			</div>
			<!--<div class="hover" >
				<p data-bind="html : models.box28.hover"> </p>
				
				<ul data-bind="foreach: models.box28.links">
					<li><a data-bind="attr: {href: url}, text: name"> </a> </li>
				</ul>
			</div>-->
		</div>
		<!-- Box29 -->
		<div class="box" style="position: absolute; left: 76%; top: 90%;">
		
			<div style=" height: 33px; width: 292px">
				<a data-bind="html: models.box29.box" ></a>
			</div>
			<!--<div class="hover" >
				<p data-bind="html : models.box29.hover"> </p>
				
				<ul data-bind="foreach: models.box29.links">
					<li><a data-bind="attr: {href: url}, text: name"> </a> </li>
				</ul>
			</div>-->
		</div>
		<!-- Title1 -->
		<div class="box" style="position: absolute; left: 14%; top: 76.5%;">
			<div  class="title" style=" height: 20px; width: 292px">
				<a data-bind="html: models.title1.box" ></a>
			</div>
		</div>
		<!-- Title2 -->
		<div class="box" style="position: absolute; left: 44%; top: 76.5%;">
			<div class="title" style=" height: 33px; width: 292px">
				<a data-bind="html: models.title2.box" ></a>
			</div>
		</div>
		<!-- Title3 -->
		<div class="box" style="position: absolute; left: 25%; top: 44.5%;">
			<div class="title" style=" height: 33px; width: 292px">
				<a data-bind="html: models.title3.box" ></a>
			</div>
		</div>
		<!-- Title4 -->
		<div class="box" style="position: absolute; left: 55%; top: 19%;">
			<div class="title" style=" height: 33px; width: 292px">
				<a data-bind="html: models.title4.box" ></a>
			</div>
		</div>
		<!-- Title5 -->
		<div class="box" style="position: absolute; left: 2%; top: 84.5%;">
			<div class="title" style=" height: 33px; width: 40px">
				<a data-bind="html: models.title5.box" ></a>
			</div>
		</div>
		<!-- Title6 -->
		<div class="box" style="position: absolute; left: 2%; top: 89.5%;">
			<div class="title" style=" height: 33px; width: 40px">
				<a data-bind="html: models.title6.box" ></a>
			</div>
		</div>
	</div>
</div>
<div data-bind="ifnot: page">
	<!-- Page 2-->
	<div id="image2">
		<!-- Box3 -->
		<div class="box" style="position: absolute; left: -1.1%; top: 45%;">
			<div class="text" style="height: 86px; width: 117px">
				<a data-bind="html: models.box3.box" > </a>
			</div>
			<div class="hover">
				<p data-bind="html : models.box3.hover"> </p>
				
				<ul data-bind="foreach:  {data : models.box3.links, as : 'link'}">
					<li><a data-bind="attr: {href: link.url}, text: link.name"> </a> </li>
				</ul>
			
			</div>
		</div>
		<!-- Box4 -->
		<div class="box" style="position: absolute; left: -1.1%; top: 57.5%;">
			<div class="text" style="height: 85px; width: 118px">
				<a data-bind="html: models.box4.box" ></a>
			</div>
			<div class="hover" >
				<p data-bind="html : models.box4.hover"> </p>
				
				<ul data-bind="foreach: models.box4.links">
					<li><a data-bind="attr: {href: url}, text: name"> </a> </li>
				</ul>
			</div>
		</div>
		<!-- Box5 -->
		<div class="box" style="position: absolute; left: -1.1%; top: 71%; ">
			<div class="text" style="height: 82px; width: 118px">
				<a data-bind="html: models.box5.box"></a>
			</div>
			<div class="hover" >
				<p data-bind="html : models.box5.hover"> </p>
				<ul data-bind="foreach: models.box5.links">
					<li><a data-bind="attr: {href: url}, text: name"> </a> </li>
				</ul>
			</div>
		</div>
		<!-- Box11 -->
		<div class="box" style="position: absolute; left: 4.5%; top: 2.5%;">
			<div class="text" style="height: 75px; width: 120px">
				<a data-bind="html: models.box11.box" ></a>
			</div>
			<div class="hover" >
				<p data-bind="html : models.box11.hover"> </p>
				
				<ul data-bind="foreach: models.box11.links">
					<li><a data-bind="attr: {href: url}, text: name"> </a> </li>
				</ul>
			</div>
		</div>
		<!-- Box14 -->
		<div class="box" style="position: absolute; left: 25%; top: 2.5%;">
			<div class="text" style="height: 68px; width: 122px">
				<a data-bind="html: models.box14.box" ></a>
			</div>
			<div class="hover" >
				<p data-bind="html : models.box14.hover"> </p>
				
				<ul data-bind="foreach: models.box14.links">
					<li><a data-bind="attr: {href: url}, text: name"> </a> </li>
				</ul>
			</div>
		</div>
		<!-- Box28 -->
		<div class="box" style="position: absolute; left: 76%; top: 76%;">
			<div style="height: 90px; width: 295px">
				<a data-bind="html: models.box28.box" style="font-size: 12px"></a>
			</div>
			<!--<div class="hover" >
				<p data-bind="html : models.box28.hover"> </p>
				
				<ul data-bind="foreach: models.box28.links">
					<li><a data-bind="attr: {href: url}, text: name"> </a> </li>
				</ul>
			</div>-->
		</div>
		<!-- Title5 -->
		<div class="box" style="position: absolute; left: 2%; top: 84.5%;">
			<div class="title" style=" height: 33px; width: 40px">
				<a data-bind="html: models.title5.box" ></a>
			</div>
		</div>
		<!-- Title6 -->
		<div class="box" style="position: absolute; left: 2%; top: 89.5%;">
			<div class="title" style=" height: 33px; width: 40px">
				<a data-bind="html: models.title6.box" ></a>
			</div>
		</div>
		<!-- Box30 -->
		<div class="box" style="position: absolute; left: 0%; top: 13.75%;">
			<div class="text" style="height: 62px; width: 282px">
				<a data-bind="html: models.box30.box" ></a>
			</div>
			<div class="hover" >
				<p data-bind="html : models.box30.hover"> </p>
				
				<ul data-bind="foreach: models.box30.links">
					<li><a data-bind="attr: {href: url}, text: name"> </a> </li>
				</ul>
			</div>
		</div>
		<!-- Box31 -->
		<div class="box" style="position: absolute; left: 0%; top: 25%; ">
			<div class="text" style="height: 90px; width: 250px">
				<a  data-bind="html: models.box31.box" > </a>
			</div>
			<div class="hover">
				<p data-bind="html : models.box31.hover"> </p>
				
				<ul data-bind="foreach: {data : models.box31.links, as : 'link'}">
					<li><a data-bind="attr: {href: link.url}, text: link.name"> </a> </li>
				</ul>
			
			
			</div>
		</div>
		<!-- Box32 -->
		<div class="box" style="position: absolute; left: 10.5%; top: 47%;">
			<div class="text" style="height: 54px; width: 125px">
				<a data-bind="html: models.box32.box" > </a>
			</div>
			<div class="hover">
				<p data-bind="html : models.box32.hover"> </p>
				
				<ul data-bind="foreach:  {data : models.box32.links, as : 'link'}">
					<li><a data-bind="attr: {href: link.url}, text: link.name"> </a> </li>
				</ul>
			
			</div>
		</div>
		<!-- Box33 -->
		<div class="box" style="position: absolute; left: 20.5%; top: 47%;">
			<div class="text" style="height: 54px; width: 125px">
				<a data-bind="html: models.box33.box" ></a>
			</div>
			<div class="hover" >
				<p data-bind="html : models.box33.hover"> </p>
				
				<ul data-bind="foreach: models.box33.links">
					<li><a data-bind="attr: {href: url}, text: name"> </a> </li>
				</ul>
			</div>
		</div>
		<!-- Box34 -->
		<div class="box" style="position: absolute; left: 10.5%; top: 56%; ">
			<div class="text" style="height: 40px; width: 260px">
				<a data-bind="html: models.box34.box"></a>
			</div>
			<div class="hover" >
				<p data-bind="html : models.box34.hover"> </p>
				<ul data-bind="foreach: models.box34.links">
					<li><a data-bind="attr: {href: url}, text: name"> </a> </li>
				</ul>
			</div>
		</div>
		<!-- Box35 -->
		<div class="box" style="position: absolute; left: 10.5%; top: 62.75%;">
			<div class="text" style="height: 40px; width: 260px">
				<a data-bind="html: models.box35.box" ></a>
			</div>
			<div class="hover" >
				<p data-bind="html : models.box35.hover"> </p>
				
				<ul data-bind="foreach: models.box35.links">
					<li><a data-bind="attr: {href: url}, text: name"> </a> </li>
				</ul>
			</div>
		</div>
		<!-- Box36 -->
		<div class="box" style="position: absolute; left: 10.5%; top: 70%; ">
			<div class="text" style="height: 60px; width: 260px">
				<a data-bind="html: models.box36.box"></a>
			</div>
			<div class="hover" >
				<p data-bind="html : models.box36.hover"> </p>
				
				<ul data-bind="foreach: models.box36.links">
					<li><a data-bind="attr: {href: url}, text: name"> </a> </li>
				</ul>
			</div>
		</div>
		<!-- Box37 -->
		<div class="box" style="position: absolute; left: 10.5%; top: 78.5%;">
			<div class="text" style="height: 52px; width: 260px">
				<a data-bind="html: models.box37.box"></a>
			</div>
			<div style="position: absolute; top: -10%;" class="hover" >
				<p data-bind="html : models.box37.hover"> </p>
				
				<ul data-bind="foreach: models.box37.links">
					<li><a data-bind="attr: {href: url}, text: name"> </a> </li>
				</ul>
			</div>
		</div>
		<!-- Box38 -->
		<div class="box" style="position: absolute; left: 28%; top: 14%;">
			<div class="text" style=" height: 75px; width: 195px">
				<a data-bind="html: models.box38.box" ></a>
			</div>
			<div style="" class="hover">
				<p data-bind="html : models.box38.hover"> </p>
				
				<ul data-bind="foreach: models.box38.links">
					<li><a data-bind="attr: {href: url}, text: name"> </a> </li>
				</ul>
			</div>
		</div>
		<!-- Box39 -->
		<div class="box" style="position: absolute; left: 29%; top: 25.5%;  ">
			<div class="text" style="height: 70px; width: 188px;">
				<a data-bind="html: models.box39.box" ></a>
			</div>
			<div style="" class="hover" >
				<p data-bind="html : models.box39.hover"> </p>
				
				<ul data-bind="foreach: models.box39.links">
					<li><a data-bind="attr: {href: url}, text: name"> </a> </li>
				</ul>
			</div>
		</div>
		<!-- Box40 -->
		<div class="box" style="position: absolute; left: 31.5%; top: 36.5%;">
			<div class="text" style="height: 75px; width: 147px">
				<a data-bind="html: models.box40.box" ></a>
			</div>
			<div class="hover" >
				<p data-bind="html : models.box40.hover"> </p>
				
				<ul data-bind="foreach: models.box40.links">
					<li><a data-bind="attr: {href: url}, text: name"> </a> </li>
				</ul>
			</div>
		</div>
		<!-- Box41 -->
		<div class="box" style="position: absolute; left: 31.5%; top: 48.5%; ">
			<div class="text" style="height: 70px; width: 154px">
				<a  data-bind="html: models.box41.box" > </a>
			</div>
			<div class="hover">
				<p data-bind="html : models.box41.hover"> </p>
				
				<ul data-bind="foreach: {data : models.box41.links, as : 'link'}">
					<li><a data-bind="attr: {href: link.url}, text: link.name"> </a> </li>
				</ul>
			</div>
		</div>
		<!-- Box42 -->
		<div class="box" style="position: absolute; left: 31%; top: 60%;">
			<div class="text" style="height: 77px; width: 155px">
				<a data-bind="html: models.box42.box" > </a>
			</div>
			<div class="hover">
				<p data-bind="html : models.box42.hover"> </p>
				
				<ul data-bind="foreach:  {data : models.box42.links, as : 'link'}">
					<li><a data-bind="attr: {href: link.url}, text: link.name"> </a> </li>
				</ul>
			
			</div>
		</div>
		<!-- Box43 -->
		<div class="box" style="position: absolute; left: 31%; top: 74%;">
			<div class="text" style="height: 50px; width: 447px">
				<a data-bind="html: models.box43.box" ></a>
			</div>
			<div class="hover" >
				<p data-bind="html : models.box43.hover"> </p>
				
				<ul data-bind="foreach: models.box43.links">
					<li><a data-bind="attr: {href: url}, text: name"> </a> </li>
				</ul>
			</div>
		</div>
		<!-- Box44 -->
		<div class="box" style="position: absolute; left: 44%; top: 10.5%; ">
			<div class="text" style="height: 100px; width: 210px">
				<a data-bind="html: models.box44.box"></a>
			</div>
			<div class="hover" >
				<p data-bind="html : models.box44.hover"> </p>
				<ul data-bind="foreach: models.box44.links">
					<li><a data-bind="attr: {href: url}, text: name"> </a> </li>
				</ul>
			</div>
		</div>
		<!-- Box45 -->
		<div class="box" style="position: absolute; left: 44%; top: 25.5%;">
			<div class="text" style="height: 60px; width: 210px">
				<a data-bind="html: models.box45.box" ></a>
			</div>
			<div class="hover" >
				<p data-bind="html : models.box45.hover"> </p>
				
				<ul data-bind="foreach: models.box45.links">
					<li><a data-bind="attr: {href: url}, text: name"> </a> </li>
				</ul>
			</div>
		</div>
		<!-- Box46 -->
		<div class="box" style="position: absolute; left: 44%; top: 35.25%; ">
			<div class="text" style="height: 47px; width: 210px">
				<a data-bind="html: models.box46.box"></a>
			</div>
			<div class="hover" >
				<p data-bind="html : models.box46.hover"> </p>
				
				<ul data-bind="foreach: models.box46.links">
					<li><a data-bind="attr: {href: url}, text: name"> </a> </li>
				</ul>
			</div>
		</div>
		<!-- Box47 -->
		<div class="box" style="position: absolute; left: 44%; top: 43%;">
			<div class="text" style="height: 60px; width: 210px">
				<a data-bind="html: models.box47.box"></a>
			</div>
			<div class="hover" >
				<p data-bind="html : models.box47.hover"> </p>
				
				<ul data-bind="foreach: models.box47.links">
					<li><a data-bind="attr: {href: url}, text: name"> </a> </li>
				</ul>
			</div>
		</div>
		<!-- Box48 -->
		<div class="box" style="position: absolute; left: 44%; top: 53%;">
			<div class="text" style=" height: 60px; width: 210px">
				<a data-bind="html: models.box48.box" ></a>
			</div>
			<div style=""class="hover">
				<p data-bind="html : models.box48.hover"> </p>
				
				<ul data-bind="foreach: models.box48.links">
					<li><a data-bind="attr: {href: url}, text: name"> </a> </li>
				</ul>
			</div>
		</div>
		<!-- Box49 -->
		<div class="box" style="position: absolute; left: 44%; top: 63%;  ">
			<div class="text" style="height: 60px; width: 207px;">
				<a data-bind="html: models.box49.box" ></a>
			</div>
			<div style="" class="hover" >
				<p data-bind="html : models.box49.hover"> </p>
				
				<ul data-bind="foreach: models.box49.links">
					<li><a data-bind="attr: {href: url}, text: name"> </a> </li>
				</ul>
			</div>
		</div>
		<!-- Box50 -->
		<div class="box" style="position: absolute; left: 61%; top: 17%;">
			<div class="text" style="height: 66px; width: 200px">
				<a data-bind="html: models.box50.box" ></a>
			</div>
			<div class="hover" >
				<p data-bind="html : models.box50.hover"> </p>
				
				<ul data-bind="foreach: models.box50.links">
					<li><a data-bind="attr: {href: url}, text: name"> </a> </li>
				</ul>
			</div>
		</div>
		<!-- Box51 -->
		<div class="box" style="position: absolute; left: 61%; top: 27.25%; ">
			<div class="text" style="height: 68px; width: 200px">
				<a  data-bind="html: models.box51.box" > </a>
			</div>
			<div class="hover">
				<p data-bind="html : models.box51.hover"> </p>
				
				<ul data-bind="foreach: {data : models.box51.links, as : 'link'}">
					<li><a data-bind="attr: {href: link.url}, text: link.name"> </a> </li>
				</ul>
			</div>
		</div>
		<!-- Box52 -->
		<div class="box" style="position: absolute; left: 61%; top: 38.25%;">
			<div class="text" style="height: 58px; width: 200px">
				<a data-bind="html: models.box52.box" > </a>
			</div>
			<div class="hover">
				<p data-bind="html : models.box52.hover"> </p>
				
				<ul data-bind="foreach:  {data : models.box52.links, as : 'link'}">
					<li><a data-bind="attr: {href: link.url}, text: link.name"> </a> </li>
				</ul>
			
			</div>
		</div>
		<!-- Box53 -->
		<div class="box" style="position: absolute; left: 61%; top: 48%;">
			<div class="text" style="height: 66px; width: 200px">
				<a data-bind="html: models.box53.box" ></a>
			</div>
			<div class="hover" >
				<p data-bind="html : models.box53.hover"> </p>
				
				<ul data-bind="foreach: models.box53.links">
					<li><a data-bind="attr: {href: url}, text: name"> </a> </li>
				</ul>
			</div>
		</div>
		<!-- Box54 -->
		<div class="box" style="position: absolute; left: 78%; top: 6.5%; ">
			<div class="text" style="height: 58px; width: 237px">
				<a data-bind="html: models.box54.box"></a>
			</div>
			<div class="hover" >
				<p data-bind="html : models.box54.hover"> </p>
				<ul data-bind="foreach: models.box54.links">
					<li><a data-bind="attr: {href: url}, text: name"> </a> </li>
				</ul>
			</div>
		</div>
		<!-- Box55 -->
		<div class="box" style="position: absolute; left: 78%; top: 19.25%;">
			<div class="text" style="height: 54px; width: 238px">
				<a data-bind="html: models.box55.box" ></a>
			</div>
			<div class="hover" >
				<p data-bind="html : models.box55.hover"> </p>
				
				<ul data-bind="foreach: models.box55.links">
					<li><a data-bind="attr: {href: url}, text: name"> </a> </li>
				</ul>
			</div>
		</div>
		<!-- Box56 -->
		<div class="box" style="position: absolute; left: 79%; top: 37.5%; ">
			<div class="text" style="height: 83px; width: 211px">
				<a data-bind="html: models.box56.box"></a>
			</div>
			<div class="hover" >
				<p data-bind="html : models.box56.hover"> </p>
				
				<ul data-bind="foreach: models.box56.links">
					<li><a data-bind="attr: {href: url}, text: name"> </a> </li>
				</ul>
			</div>
		</div>
		<!-- Box57 -->
		<div class="box" style="position: absolute; left: 79%; top: 50%;">
			<div class="text" style="height: 67px; width: 211px">
				<a data-bind="html: models.box57.box"></a>
			</div>
			<div class="hover" >
				<p data-bind="html : models.box57.hover"> </p>
				
				<ul data-bind="foreach: models.box57.links">
					<li><a data-bind="attr: {href: url}, text: name"> </a> </li>
				</ul>
			</div>
		</div>
		<!-- Box58 -->
		<div class="box" style="position: absolute; left: 79%; top: 60.25%;">
			<div class="text" style=" height: 73px; width: 211px">
				<a data-bind="html: models.box58.box" ></a>
			</div>
			<div style=""class="hover">
				<p data-bind="html : models.box58.hover"> </p>
				
				<ul data-bind="foreach: models.box58.links">
					<li><a data-bind="attr: {href: url}, text: name"> </a> </li>
				</ul>
			</div>
		</div>
		<!-- Box59 -->
		<div class="box" style="position: absolute; left: 76%; top: 87%;">
			<div style="height: 60px; width: 295px">
				<a data-bind="html: models.box59.box"></a>
			</div>
		</div>
		<!-- Title7 -->
		<div class="box" style="position: absolute; left: 11%; top: 42%;">
			<div  class="title" style=" height: 20px; width: 292px">
				<a data-bind="html: models.title7.box" ></a>
			</div>
		</div>
		<!-- Title8 -->
		<div class="box" style="position: absolute; left: 42%; top: 3.75%;">
			<div class="title" style=" height: 20px; width: 292px">
				<a data-bind="html: models.title8.box" ></a>
			</div>
		</div>
		<!-- Title9 -->
		<div class="box" style="position: absolute; left: 77%; top: -2%;">
			<div class="title" style=" height: 33px; width: 292px">
				<a data-bind="html: models.title9.box" ></a>
			</div>
		</div>
		<!-- Title10 -->
		<div class="box" style="position: absolute; left: 77%; top: 32.5%;">
			<div class="title" style=" height: 33px; width: 292px">
				<a data-bind="html: models.title10.box" ></a>
			</div>
		</div>
		<!-- Title11 -->
		<div class="box" style="position: absolute; left: 11.5%; top: 88.5%;">
			<div class="title" style=" height: 20px; width: 150px">
				<a data-bind="html: models.title11.box" ></a>
			</div>
		</div>
		<!-- Title12 -->
		<div class="box" style="position: absolute; left: 11.5%; top: 90.5%;">
			<div class="title" style=" height: 20px; width: 150px">
				<a data-bind="html: models.title12.box" ></a>
			</div>
		</div>
	</div>
	</div>
</div>
</body>


</html>

