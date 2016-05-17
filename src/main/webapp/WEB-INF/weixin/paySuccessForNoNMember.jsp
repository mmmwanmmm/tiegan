<%--
  Created by IntelliJ IDEA.
  User: wcg
  Date: 16/5/16
  Time: 下午2:04
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@include file="/WEB-INF/commen.jsp" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title></title>
    <link rel="stylesheet" href="${resourceUrl}/css/common.css">
    <link rel="stylesheet" href="${resourceUrl}/css/paySuccess.css"/>
</head>
<body>
<ul id="paySuccess">
    <li>
        <span class="logo-yes"></span>
        支付成功
    </li>
    <li class="info">
        <span class="left">消费门店</span>
        <span class="right">${offLineOrder.merchant.name}</span>
    </li>
    <li class="info">
        <span class="left">消费金额</span>
    <span class="right red">￥${offLineOrder.totalPrice/100}</span>
    </li>
    <li class="info">
        <span class="left">乐付确认码</span>
        <span class="right">${offLineOrder.lepayCode}</span>
    </li>
    <li class="info">
        <span class="left">支付单号</span>
        <span class="right">${offLineOrder.orderSid}</span>
    </li>
</ul>
<div class="list">
    <div class="left jifen">
        <p>积分</p>

        <p>${offLineOrder.scoreB}</p>

        <p>待使用</p>
    </div>
    <div class="right">
        <p>乐＋生活</p>

        <p>可在乐＋商城中消费使用</p>

        <p class="btn"><span class="right-btn" onclick="goLePlusLife()">立即使用<font>></font></span>
        </p>
    </div>
</div>
</body>
<script>
    function goLePlusLife() {
        location.href = "http://www.lepluslife.com/weixin/shop"
    }
</script>
</html>