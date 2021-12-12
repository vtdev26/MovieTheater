<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<h3 class="row justify-content-center font-weight-bold">${promotion.promotionId == null?'Add new':'Edit'}
    Promotion</h3>
<h3 style="color: red; font-size: 20px" class="error font-weight-bold " id="messagePromotion"></h3>

<div style="display: grid; place-items: center;">

    <img style="width: 40%;" id="imgPromotion" alt="" src="${promotion.image}">

</div>

<div>
    <hr>
    <form action="#" method="post" name="formPromotion" id="formPromotion" enctype="multipart/form-data">
        <input hidden id="promotionId" name="promotionId" value="${promotion.promotionId}">
        <div class="form-group">
            <label for="title">Title <span class="text-danger">(*)</span></label>
            <input type="text" class="form-control" id="title" name="title" value="${promotion.title}"
                   placeholder="Title">
            <label class="error" ${errorList['title']==null?'hidden':''}>
                <c:out value="${errorList['title']}"/>
            </label>
            <p class="error" id="titlePromotionError" hidden="true"></p>
        </div>

        <div class="form-group">
            <label for="startTime">Start Time <span class="text-danger">(*)</span></label>
            <fmt:formatDate value="${promotion.startTime}" pattern="yyyy-MM-dd" var="start"/>
            <input type="date" class="form-control" id="startTime" name="startTime" value="${start}">
            <p class="error" id="startTimePromotionError" hidden></p>
        </div>

        <div class="form-group">
            <label for="endTime">End Time <span class="text-danger">(*)</span></label>
            <fmt:formatDate value="${promotion.endTime}" pattern="yyyy-MM-dd" var="end"/>
            <input type="date" class="form-control" id="endTime" name="endTime" value="${end}">
            <p class="error" id="endTimePromotionError" hidden></p>
        </div>

        <div class="form-group">
            <label for="discountLevel">Discount Level <span class="text-danger">(*)</span></label>
            <input type="number" class="form-control" id="discountLevel" name="discountLevel"
                   placeholder="Discount Level" value="${promotion.discountLevel}">
            <label class="error" ${errorList['discountLevel']==null?'hidden':''}>
                <c:out value="${errorList['discountLevel']}"/>
            </label>
            <p class="error" id="discountLevelError" hidden></p>
        </div>

        <div class="form-group">
            <label for="detail">Detail <span class="text-danger">(*)</span></label>
            <input type="text" class="form-control" id="detail" name="detail" placeholder="Detail"
                   value="${promotion.detail}">
            <label class="error" ${errorList['detail']==null?'hidden':''}>
                <c:out value="${errorList['detail']}"/>
            </label>
            <p class="error" id="detailPromotionError" hidden></p>
        </div>

        <input hidden id="image" name="image" value="${promotion.image}">

        <div class="form-group">
            <label for="file">Image</label>
            <input type="file" class="form-control" id="file" name="file" onchange="readURL(this)">
        </div>

        <button id="btnSavePromotion" type="button" class="btn btn-primary">
            <i class="fas fa-check"></i> Save
        </button>

        <button id="btnBackPromotion" type="button" class="btn btn-primary">
            <i class="fas fa-times"></i> Back
        </button>

    </form>
</div>

<script>
    function readURL(input) {
        if (input.files && input.files[0]) {
            let reader = new FileReader();
            reader.onload = function (e) {
                $('#imgPromotion').attr('src', e.target.result);
            };
            reader.readAsDataURL(input.files[0]);
        }
    }
</script>