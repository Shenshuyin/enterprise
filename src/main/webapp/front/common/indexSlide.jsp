<%@ page language="java" contentType="text/html; UTF-8"
         pageEncoding="UTF-8" %>

<%@ page isELIgnored="false" %>
<%@page import="com.enterprise.core.SystemManage" %>
<%@page import="com.enterprise.entity.SystemSetting" %>
<%@ page import="org.apache.commons.lang.StringUtils" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--<%--%>
<%--    String path = request.getContextPath();--%>
<%--    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";--%>
<%--%>--%>
<%--<head>--%>
<%--    <link href="<%=path%>/resource/swiper/css/swiper.min.css" rel="stylesheet" type="text/css"/>--%>
<%--    <script src="<%=path%>/resource/swiper/js/swiper.min.js" type="text/javascript"></script>--%>
<%--    <base href="<%=basePath%>">--%>
<%--</head>--%>
<body>
<%--<%@include file="/front/common/common.jsp" %>--%>
<%--<%@include file="./common.jsp" %>--%>
<%--<%--%>
<%--    String path = request.getContextPath();--%>
<%--    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";--%>
<%--%>--%>
<%--<% String path = "http://localhost:8080/enterprise_war_exploded/"; %>--%>
<%--以上都是会直接导致index页面404，不知道为什么？--%>


<%--<link href="/resource/swiper/css/swiper.min.css" rel="stylesheet" type="text/css"/>--%>
<link href="<%=request.getContextPath()%>/resource/swiper/css/swiper.min.css" rel="stylesheet" type="text/css"/>

<%--<script src="/resource/swiper/js/swiper.min.js" type="text/javascript"></script>--%>
<script src="<%=request.getContextPath()%>/resource/swiper/js/swiper.min.js" type="text/javascript"></script>
<style>
    #index-banner {
        position: relative;
        height: 481px;
    }
    .swiper-container {
        position: absolute;
        height: 481px;
        width: 100%;
    }
    .swiper-slide {
        background-position: center 0;
        background-repeat: no-repeat;
        box-sizing: content-box;
        float: left;
    }
    .swiper-pagination-bullet {
        margin: 1px;
        width: 42px;
        height: 11px;
        display: inline-block;
        background: #fff;
        border-radius:0;
        filter: alpha(opacity=70);
        opacity: 0.7;
    }
    .swiper-pagination-bullet-active {
        opacity: 1;
        background: #fff;
    }

    .swiper-button-prev {
        width: 32px;
        height: 40px;
        /*background: url(./resource/images/slider-arrow.png) -110px 5px no-repeat;*/
        background: url(<%=request.getContextPath()%>/resource/images/slider-arrow.png) -110px 5px no-repeat;
        filter: alpha(opacity=50);
        opacity: 0.7;
        display: inline-block;
    }
    .swiper-button-next {
        width: 32px;
        height: 40px;
        /*background: url(./resource/images/slider-arrow.png) -55px 5px no-repeat;*/
        background: url(<%=request.getContextPath()%>/resource/images/slider-arrow.png) -55px 5px no-repeat;
        filter: alpha(opacity=50);
        opacity: 0.7;
        display: inline-block;
    }
    .swiper-button-prev:hover,
    .swiper-button-next:hover{
        filter: alpha(opacity=100);
        opacity: 1;
    }
   </style>
<div id="index-banner" class="">
<div class="swiper-container">
    <div class="swiper-wrapper">
        <c:forEach var="item" items="<%=SystemManage.getInstance().getIndexImgs()%>">
            <div class="swiper-slide"  style="background-image: url(<%=SystemManage.getInstance().getSystemSetting().getImageRootPath()%>/<%=request.getContextPath()%>/${item.pictureUrl});"></div>
        </c:forEach>
    </div>
    <!-- Add Pagination -->
    <div class="swiper-pagination"></div>
    <div class="swiper-button-next"></div>
    <div class="swiper-button-prev"></div>
</div>
</div>
<script>
    $().ready(function () {
        var mySwiper = new Swiper('.swiper-container', {
            pagination: '.swiper-pagination',
            nextButton: '.swiper-button-next',
            prevButton: '.swiper-button-prev',
            autoplay: 8e3,
            autoplayDisableOnInteraction: !1,
            loop: !0,
            paginationClickable: !0


        });

    });

</script>
</body>

