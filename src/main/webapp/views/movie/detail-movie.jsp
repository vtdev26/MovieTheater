<%@page contentType="text/html" pageEncoding="UTF-8"%>
<h3 class="row justify-content-center">Add new movie</h3>
                    <img id="imgMovie" src="">
                    <div>
                        <hr>
                        <form action="#" method="post" name="formMovie" id="=formMovie">
                            <p style="color: red">Save Fail</p>
                            <div class="form-group">
                                <label for="movieNameENG" class="font-weight-bold">Movie Name(ENG) <span class="text-danger">(*)</span></label>
                                <input type="text" class="form-control" id="movieNameENG" name="movieNameENG" placeholder="Movie Name(ENG)">
                            </div>

                            <div class="form-group">
                                <label for="movieNameVN" class="font-weight-bold">Movie Name(VN) <span class="text-danger">(*)</span></label>
                                <input type="text" class="form-control" id="movieNameVN" name="movieNameVN" placeholder="Movie Name(VN)">
                            </div>
                            <div class="form-group">
                                <label for="fromDate" class="font-weight-bold">From Date <span class="text-danger">(*)</span></label>
                                <input type="date" class="form-control" id="fromDate" name="fromDate">
                            </div>

                            <div class="form-group">
                                <label for="toDate" class="font-weight-bold">To Date <span class="text-danger">(*)</span></label>
                                <input type="date" class="form-control" id="toDate" name="toDate">
                            </div>

                            <div class="form-group">
                                <label for="actor" class="font-weight-bold">Actor <span class="text-danger">(*)</span></label>
                                <input type="text" class="form-control" id="actor" name="actor" placeholder="Actor">
                            </div>
                            <div class="form-group">
                                <label for="company" class="font-weight-bold">Production Company <span class="text-danger">(*)</span></label>
                                <input type="text" class="form-control" id="company" name="company" placeholder="Promotion Company">
                            </div>
                            <div class="form-group">
                                <label for="director" class="font-weight-bold">Director<span class="text-danger">(*)</span></label>
                                <input type="text" class="form-control" id="director" name="director" placeholder="Director">
                            </div>
                            <div class="form-group">
                                <label for="duration" class="font-weight-bold">Duration<span class="text-danger">(*)</span></label>
                                <input type="text" class="form-control" id="duration" name="duration" placeholder="Duration">
                            </div>
                            <div class="form-group">
                                <label for="version" class="font-weight-bold">Version<span class="text-danger">(*)</span></label>
                                <input type="text" class="form-control" id="version" name="version" placeholder="Version">
                            </div>
                            <div class="form-group">
                                <label for="exampleInputGender" class="font-weight-bold">Type <span class="text-danger">(*)</span></label>
                                <div class="custom-control custom-checkbox">
                                    <div class="row">
                                        <th:block th:each="type : ${types}">
                                            <div class="col-sm-4">
                                                <div>
                                                    <input type="checkbox" class="custom-control-input" name="types" th:id="'type_'+${type.typeId}" th:checked="${#lists.contains(typeIds, type.typeId)}" th:value="${type.typeId}"> <label class="custom-control-label"
                                                        th:for="'type_'+${type.typeId}" th:text="${type.typeName}"></label>
                                                </div>
                                            </div>
                                        </th:block>

                                    </div>
                                </div>
                                <div class="custom-control custom-checkbox">
                                    <div class="row">
                                        <th:block th:each="type : ${types}">
                                            <div class="col-sm-4">
                                                <div>
                                                    <input type="checkbox" class="custom-control-input" name="types" th:id="'type_'+${type.typeId}" th:checked="${#lists.contains(typeIds, type.typeId)}" th:value="${type.typeId}"> <label class="custom-control-label"
                                                        th:for="'type_'+${type.typeId}" th:text="${type.typeName}"></label>
                                                </div>
                                            </div>
                                        </th:block>
                                        <th:block th:each="type : ${types}">
                                            <div class="col-sm-4">
                                                <div>
                                                    <input type="checkbox" class="custom-control-input" name="types" th:id="'type_'+${type.typeId}" th:checked="${#lists.contains(typeIds, type.typeId)}" th:value="${type.typeId}"> <label class="custom-control-label"
                                                        th:for="'type_'+${type.typeId}" th:text="${type.typeName}"></label>
                                                </div>
                                            </div>
                                        </th:block>
                                        <th:block th:each="type : ${types}">
                                            <div class="col-sm-4">
                                                <div>
                                                    <input type="checkbox" class="custom-control-input" name="types" th:id="'type_'+${type.typeId}" th:checked="${#lists.contains(typeIds, type.typeId)}" th:value="${type.typeId}"> <label class="custom-control-label"
                                                        th:for="'type_'+${type.typeId}" th:text="${type.typeName}"></label>
                                                </div>
                                            </div>
                                        </th:block>
                                        <th:block th:each="type : ${types}">
                                            <div class="col-sm-4">
                                                <div>
                                                    <input type="checkbox" class="custom-control-input" name="types" th:id="'type_'+${type.typeId}" th:checked="${#lists.contains(typeIds, type.typeId)}" th:value="${type.typeId}"> <label class="custom-control-label"
                                                        th:for="'type_'+${type.typeId}" th:text="${type.typeName}"></label>
                                                </div>
                                            </div>
                                        </th:block>
                                        <th:block th:each="type : ${types}">
                                            <div class="col-sm-4">
                                                <div>
                                                    <input type="checkbox" class="custom-control-input" name="types" th:id="'type_'+${type.typeId}" th:checked="${#lists.contains(typeIds, type.typeId)}" th:value="${type.typeId}"> <label class="custom-control-label"
                                                        th:for="'type_'+${type.typeId}" th:text="${type.typeName}"></label>
                                                </div>
                                            </div>
                                        </th:block>
                                        <th:block th:each="type : ${types}">
                                            <div class="col-sm-4">
                                                <div>
                                                    <input type="checkbox" class="custom-control-input" name="types" th:id="'type_'+${type.typeId}" th:checked="${#lists.contains(typeIds, type.typeId)}" th:value="${type.typeId}"> <label class="custom-control-label"
                                                        th:for="'type_'+${type.typeId}" th:text="${type.typeName}"></label>
                                                </div>
                                            </div>
                                        </th:block>


                                    </div>
                                </div>


                            </div>
                            <div class="form-group">
                                <label for="cinemaRoom" class="font-weight-bold">Cinema Room<span class="text-danger">(*)</span></label>
                                <select id="cinemaRoom" name="cinemaRoom" class="form-control">
                                    <option >Cinema Room 1</option>
                            </select>
                            </div>
                            <div class="form-group">
                                <label for="exampleInputGender" class="font-weight-bold">Schedule <span class="text-danger">(*)</span></label>
                                <div class="row">
                                    <div class="col-sm-4">
                                        <label class="checkbox-inline">
                                        <input type="checkbox"class="flat" name="schedule[]"> 08:00</label>
                                    </div>
                                    <div class="col-sm-4">
                                        <label class="checkbox-inline">
                                        <input type="checkbox" class="flat" name="schedule[]"> 13:30 </label>
                                    </div>
                                    <div class="col-sm-4">
                                        <label class="checkbox-inline">
                                        <input type="checkbox" class="flat" name="schedule[]"> 18:30</label>
                                    </div>

                                </div>
                                <div class="row">
                                    <div class="col-sm-4">
                                        <label class="checkbox-inline">
                                        <input type="checkbox" class="flat" name="schedule[]"> 09:00</label>
                                    </div>
                                    <div class="col-sm-4">
                                        <label class="checkbox-inline">
                                        <input type="checkbox" class="flat" name="schedule[]"> 14:30</label>
                                    </div>
                                    <div class="col-sm-4">
                                        <label class="checkbox-inline">
                                        <input type="checkbox" class="flat"name="schedule[]" > 19:00</label>
                                    </div>

                                </div>
                                <div class="row">
                                    <div class="col-sm-4">
                                        <label class="checkbox-inline">
                                        <input type="checkbox" class="flat" name="schedule[]"> 10:00</label>
                                    </div>
                                    <div class="col-sm-4">
                                        <label class="checkbox-inline">
                                        <input type="checkbox" class="flat" name="schedule[]"> 15:00</label>
                                    </div>
                                    <div class="col-sm-4">
                                        <label class="checkbox-inline">
                                        <input type="checkbox" class="flat" name="schedule[]"> 20:00</label>
                                    </div>

                                </div>
                                <div class="row">
                                    <div class="col-sm-4">
                                        <label class="checkbox-inline">
                                        <input type="checkbox" class="flat" name="schedule[]"> 11:00</label>
                                    </div>
                                    <div class="col-sm-4">
                                        <label class="checkbox-inline">
                                        <input type="checkbox" class="flat" name="schedule[]"> 17:00</label>
                                    </div>
                                    <div class="col-sm-4">
                                        <label class="checkbox-inline">
                                        <input type="checkbox" class="flat" name="schedule[]"> 21:00</label>
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="content" class="font-weight-bold">Content<span class="text-danger">(*)</span></label>
                                <textarea class="form-control" id="content" name="content" rows="2"></textarea>
                            </div>

                            <div class="form-group">
                                <label for="inputImagePromotion">Image</label>
                                <input type="file" class="form-control" id="inputImagePromotion" name="inputImagePromotion">
                            </div>

                            <button id="btnSavePromotion" type="submit" class="btn btn-primary">
                                <i class="fas fa-check"></i> Save
                            </button>

                            <button id="btnBackPromotion" type="button" class="btn btn-primary">
                                <i class="fas fa-times"></i> Back
                            </button>

                        </form>
                    </div>