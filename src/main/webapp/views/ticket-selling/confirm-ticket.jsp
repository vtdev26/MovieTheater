<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<link rel="stylesheet" href="/resources/css/ticket-selling/selecting-seat.css">
<div class="container-fluid bg-white mt-5 p-5 rounded-lg">
    <div class="row">
        <div class="col-2">
            <img class="img-responsive poster" src="/resources/img/ticket-selling/poster_shangchi.jpg">
        </div>
        <div class="col-10">
            <div class="ticket-infor">
                <p class="film-title text-primary">
                    ${movie.movieNameVn}
                </p>
                <table class="table table-hover">
                    <tbody>
                        <tr>
                            <th scope="row">Screen:</th>
                            <td>${seats[0].cinemaRoom.cinemaRoomName}</td>
                        </tr>
                        <tr>
                            <th scope="row">Date:</th>
                            <td id="dateConfirm">01/12/2021</td>
                        </tr>
                        <tr>
                            <th scope="row">Time:</th>
                            <td id="timeConfirm">21:00</td>
                        </tr>
                        <tr>
                            <th scope="row">Seat:</th>
                            <td>
                                <c:forEach var="seat" items="${seats}">
                                    ${seat.seatRow}${seat.seatColumn}
                                </c:forEach>
                            </td>
                        </tr>
                        <tr>
                            <th scope="row">Price:</th>
                            <c:set var="totalPrice" value="0"/>
                            <td>
                                <c:forEach var="seat" items="${seats}">
                                    <p>${seat.seatRow}${seat.seatColumn}: 
                                    <fmt:formatNumber value="${seat.price}" type="number"
                                    minFractionDigits="0"/>₫
                                </p>
                                <c:set var="totalPrice" value="${totalPrice + seat.price}" />
                                </c:forEach>
                            </td>
                        </tr>
                        <tr>
                            <th scope="row">Total:</th>
                            <td class="text-success font-weight-bold">
                                <fmt:formatNumber type="number" minFractionDigits="0" value="${totalPrice}" />₫
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
            <div class="account infor mt-5">
                <p class="film-title text-primary">
                    Member
                </p>
                <table class="table">
                    <tbody>
                        <tr>
                            <td colspan="2" scope="row">
                                <form>
                                    <div class="form-row align-items-center">
                                        <div class="col-auto">
                                            <label class="sr-only" for="inlineFormInput">Name</label>
                                            <input type="text" class="form-control mb-2" id="inlineFormInput"
                                                placeholder="Jane Doe">
                                        </div>
                                        <div class="col-auto">
                                            <button type="button" id="btnSearchIdMember"
                                                class="btn btn-primary mb-2">Submit</button>
                                        </div>
                                    </div>
                                </form>
                            </td>
                        </tr>
                    </tbody>
                </table>
                <table class="table table-hover" id="infor-member">
                    <tbody>
                        <tr>
                            <th scope="row">Screen:</th>
                            <td>Scm02</td>
                        </tr>
                        <tr>
                            <th scope="row">Date:</th>
                            <td>01/12/2021</td>
                        </tr>
                        <tr>
                            <th scope="row">Time:</th>
                            <td>21:00</td>
                        </tr>
                        <tr>
                            <th scope="row">Seat:</th>
                            <td>
                                1D 1E 1F
                            </td>
                        </tr>
                        <tr>
                            <th scope="row">Price:</th>
                            <td>
                                <p>1D: 45000</p>
                                <p>1E: 45000</p>
                                <p>1F: 45000</p>
                            </td>
                        </tr>
                        <tr>
                            <th scope="row">Total:</th>
                            <td>
                                <div class="form-check">
                                    <input class="form-check-input" type="radio" name="exampleRadios" value="option1"
                                        id="radAgree">
                                    <label class="form-check-label" for="exampleRadios1">
                                        Agree
                                    </label>
                                </div>
                                <div class="form-check">
                                    <input class="form-check-input" type="radio" name="exampleRadios" id="radDeo"
                                        value="option2">
                                    <label class="form-check-label" for="exampleRadios2">
                                        No
                                    </label>
                                </div>
                            </td>
                        </tr>
                    </tbody>
                </table>
                <div id="discount">
                    <form>
                        <div class="form-row align-items-center">
                            <div class="col-auto">
                                <label class="sr-only" for="inlineFormInput">Name</label>
                                <input type="text" class="form-control mb-2" id="inlineFormInput"
                                    placeholder="Jane Doe">
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="row my-5 pr-3 justify-content-end">
    <button class="btn btn-primary mr-3 btnControlConfirm"> <i class="fas fa-long-arrow-alt-left"></i>
        Back</button>
    <button class="btn btn-primary btnControlConfirm"> Confirm Booking Ticket <i
            class="fas fa-long-arrow-alt-right"></i></button>
</div>
<script>
    $(document).ready(function () {
        $("#infor-member").hide();
        $("#discount").hide();

        $("body").on("click", "#btnSearchIdMember", function () {
            $("#infor-member").show();
        });

        $("body").on("change", "#radAgree", function () {
            if ($(this).prop('checked')) {
                $("#discount").show();
            }
        });

        $("body").on("change", "#radDeo", function () {
            if ($(this).prop('checked')) {
                $("#discount").hide();
            }
        });
    });
</script>