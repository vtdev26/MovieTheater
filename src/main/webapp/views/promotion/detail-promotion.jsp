<%@page contentType="text/html" pageEncoding="UTF-8"%>
<h3 class="row justify-content-center">Add new Promotion</h3>
                    <label class="error">Save Failed</label>
                    <img id="imgPromotion" src="">
                    <div>
                        <hr>
                        <form action="#" method="post" name="formPromotion" id="formPromotion">

                            <div class="form-group">
                                <label for="titlePromotion">Title <span class="text-danger">(*)</span></label>
                                <input type="text" class="form-control" id="titlePromotion" name="titlePromotion"
                                    placeholder="Title">
                            </div>

                            <div class="form-group">
                                <label for="startTimePromotion">Start Time <span class="text-danger">(*)</span></label>
                                <input type="date" class="form-control" id="startTimePromotion" name="startTimePromotion">
                            </div>

                            <div class="form-group">
                                <label for="endTimePromotion">End Time <span class="text-danger">(*)</span></label>
                                <input type="date" class="form-control" id="endTimePromotion" name="endTimePromotion">
                            </div>

                            <div class="form-group">
                                <label for="cfPassword">Discount Level <span class="text-danger">(*)</span></label>
                                <input type="number" class="form-control" id="discountLevel" name="discountLevel"
                                    placeholder="Discount Level">
                            </div>

                            <div class="form-group">
                                <label for="cfPassword">Detail <span class="text-danger">(*)</span></label>
                                <input type="text" class="form-control" id="detailPromotion" name="detailPromotion"
                                    placeholder="Detail">
                            </div>

                            <div class="form-group">
                                <label for="inputImagePromotion">Image</label>
                                <input type="file" class="form-control" id="inputImagePromotion"
                                    name="inputImagePromotion">
                            </div>

                            <button id="btnSavePromotion" type="submit" class="btn btn-primary">
                                <i class="fas fa-check"></i> Save
                            </button>

                            <button id="btnBackPromotion" type="button" class="btn btn-primary">
                                <i class="fas fa-times"></i> Back
                            </button>

                        </form>
                    </div>