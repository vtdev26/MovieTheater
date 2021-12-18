<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
            <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
                                            <td id="dateConfirm">""</td>
                                        </tr>
                                        <tr>
                                            <th scope="row">Time:</th>
                                            <td id="timeConfirm">""</td>
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
                                            <th scope="row">Price: </th>
                                            <c:set var="totalPrice" value="0" />
                                            <td>
                                                <c:forEach var="seat" items="${seats}">
                                                    <p>${seat.seatRow}${seat.seatColumn}:
                                                        <fmt:formatNumber value="${seat.price}" type="number"
                                                            minFractionDigits="0" />
                                                    </p>
                                                    <c:set var="totalPrice" value="${totalPrice + seat.price}"/>
                                                </c:forEach>
                                            </td>
                                        </tr>
                                        <tr>
                                            <th scope="row">Total:</th>
                                            <td class="text-success font-weight-bold totalPriceTicket"  data-total-price="${totalPrice}" >
                                                <fmt:formatNumber type="number" minFractionDigits="0"
                                                    value="${totalPrice}" />₫
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                            <div class="memberinfor mt-5">
                                <p class="film-title text-primary">
                                    Member
                                </p>
                                <table class="table">
                                    <tbody>
                                        <tr>
                                            <td colspan="4" scope="row">
                                                <form>
                                                    <div class="form-row align-items-center">
                                                        <div class="col-md-3">
                                                            <label class="sr-only" for="inlineFormInput">Name</label>
                                                            <input type="text" class="form-control mb-2"
                                                                id="memberInfor" placeholder="Member ID Or Identity Card">
                                                        </div>
                                                        <div class="col-auto">
                                                            <button type="button" id="btnSearchIdMember"
                                                                class="btn btn-primary mb-2">Check</button>
                                                        </div>
                                                    </div>
                                                </form>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                                <table class="table table-hover" id="infor-member">
                                    <tbody class="member-information">
                                    </tbody>
                                </table>
                                <span style="color: red;"id="messageConfirm"></span>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="row my-5 pr-3 justify-content-end">
                    <button class="btn btn-primary mr-3 btnControlConfirm" id="btn_Back_To_SelectingSeat"> <i
                            class="fas fa-long-arrow-alt-left"></i>
                        Back</button>
                    <button class="btn btn-primary btnControlConfirm"> Confirm Booking Ticket <i
                            class="fas fa-long-arrow-alt-right"></i></button>
                </div>
