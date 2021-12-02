<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <link rel="stylesheet" href="/resources/css/ticket-selling/selecting-seat.css">
            <div class="row mb-5">
                <p class="mr-4 mt-1 font-weight-bold">Select seat quantity</p>
                <select class="custom-select col-1" id="inputGroupSelect01">
                    <option selected>1</option>
                    <option value="1">2</option>
                    <option value="2">3</option>
                    <option value="3">4</option>
                </select>
            </div>
            <span class="infoMsg mb-2" style="color:red"></span>
            <div class="row justify-content-center" id="rowListSeat">
                <table class="table" id="tableSeat">
                    <tbody>
                        <tr>
                            <td>
                                <button type="button" class="pushable">
                                    <span class="front-button">1A</span>
                                </button>
                            </td>
                            <td>
                                <button type="button" class="pushable pushable-vip" data-type="vip">
                                    <span class="front-button">1B</span>
                                </button>
                            </td>
                            <td>
                                <button type="button" class="pushable">
                                    <span class="front-button">1C</span>
                                </button>
                            </td>
                            <td class="px-4"></td>
                            <td>
                                <button type="button" class="pushable pushable-sold">
                                    <span class="front-button">1D</span>
                                </button>
                            </td>
                            <td>
                                <button type="button" class="pushable pushable-sold">
                                    <span class="front-button">1E</span>
                                </button>
                            </td>
                            <td>
                                <button type="button" class="pushable pushable-sold">
                                    <span class="front-button">1F</span>
                                </button>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <button type="button" class="pushable pushable-vip" data-type="vip">
                                    <span class="front-button">2A</span>
                                </button>
                            </td>
                            <td>
                                <button type="button" class="pushable">
                                    <span class="front-button">2B</span>
                                </button>
                            </td>
                            <td>
                                <button type="button" class="pushable">
                                    <span class="front-button">2C</span>
                                </button>
                            </td>
                            <td class="px-4"></td>
                            <td>
                                <button type="button" class="pushable pushable-vip" data-type="vip">
                                    <span class="front-button">2D</span>
                                </button>
                            </td>
                            <td>
                                <button type="button" class="pushable">
                                    <span class="front-button">2E</span>
                                </button>
                            </td>
                            <td>
                                <button type="button" class="pushable">
                                    <span class="front-button">2F</span>
                                </button>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <button type="button" class="pushable">
                                    <span class="front-button">3A</span>
                                </button>
                            </td>
                            <td>
                                <button type="button" class="pushable">
                                    <span class="front-button">3B</span>
                                </button>
                            </td>
                            <td>
                                <button type="button" class="pushable">
                                    <span class="front-button">3C</span>
                                </button>
                            </td>
                            <td class="px-4"></td>
                            <td>
                                <button type="button" class="pushable">
                                    <span class="front-button">3D</span>
                                </button>
                            </td>
                            <td>
                                <button type="button" class="pushable">
                                    <span class="front-button">3E</span>
                                </button>
                            </td>
                            <td>
                                <button type="button" class="pushable pushable-selecting">
                                    <span class="front-button">3F</span>
                                </button>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <button type="button" class="pushable">
                                    <span class="front-button">3A</span>
                                </button>
                            </td>
                            <td>
                                <button type="button" class="pushable">
                                    <span class="front-button">3B</span>
                                </button>
                            </td>
                            <td>
                                <button type="button" class="pushable">
                                    <span class="front-button">3C</span>
                                </button>
                            </td>
                            <td class="px-4"></td>
                            <td>
                                <button type="button" class="pushable">
                                    <span class="front-button">3D</span>
                                </button>
                            </td>
                            <td>
                                <button type="button" class="pushable">
                                    <span class="front-button">3E</span>
                                </button>
                            </td>
                            <td>
                                <button type="button" class="pushable pushable-selecting">
                                    <span class="front-button">3F</span>
                                </button>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <button type="button" class="pushable">
                                    <span class="front-button">3A</span>
                                </button>
                            </td>
                            <td>
                                <button type="button" class="pushable">
                                    <span class="front-button">3B</span>
                                </button>
                            </td>
                            <td>
                                <button type="button" class="pushable">
                                    <span class="front-button">3C</span>
                                </button>
                            </td>
                            <td class="px-4"></td>
                            <td>
                                <button type="button" class="pushable">
                                    <span class="front-button">3D</span>
                                </button>
                            </td>
                            <td>
                                <button type="button" class="pushable">
                                    <span class="front-button">3E</span>
                                </button>
                            </td>
                            <td>
                                <button type="button" class="pushable pushable-selecting">
                                    <span class="front-button">3F</span>
                                </button>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <button type="button" class="pushable">
                                    <span class="front-button">3A</span>
                                </button>
                            </td>
                            <td>
                                <button type="button" class="pushable">
                                    <span class="front-button">3B</span>
                                </button>
                            </td>
                            <td>
                                <button type="button" class="pushable">
                                    <span class="front-button">3C</span>
                                </button>
                            </td>
                            <td class="px-4"></td>
                            <td>
                                <button type="button" class="pushable">
                                    <span class="front-button">3D</span>
                                </button>
                            </td>
                            <td>
                                <button type="button" class="pushable">
                                    <span class="front-button">3E</span>
                                </button>
                            </td>
                            <td>
                                <button type="button" class="pushable pushable-selecting">
                                    <span class="front-button">3F</span>
                                </button>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <button type="button" class="pushable">
                                    <span class="front-button">3A</span>
                                </button>
                            </td>
                            <td>
                                <button type="button" class="pushable">
                                    <span class="front-button">3B</span>
                                </button>
                            </td>
                            <td>
                                <button type="button" class="pushable">
                                    <span class="front-button">3C</span>
                                </button>
                            </td>
                            <td class="px-4"></td>
                            <td>
                                <button type="button" class="pushable">
                                    <span class="front-button">3D</span>
                                </button>
                            </td>
                            <td>
                                <button type="button" class="pushable">
                                    <span class="front-button">3E</span>
                                </button>
                            </td>
                            <td>
                                <button type="button" class="pushable pushable-selecting">
                                    <span class="front-button">3F</span>
                                </button>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <button type="button" class="pushable">
                                    <span class="front-button">3A</span>
                                </button>
                            </td>
                            <td>
                                <button type="button" class="pushable">
                                    <span class="front-button">3B</span>
                                </button>
                            </td>
                            <td>
                                <button type="button" class="pushable">
                                    <span class="front-button">3C</span>
                                </button>
                            </td>
                            <td class="px-4"></td>
                            <td>
                                <button type="button" class="pushable">
                                    <span class="front-button">3D</span>
                                </button>
                            </td>
                            <td>
                                <button type="button" class="pushable">
                                    <span class="front-button">3E</span>
                                </button>
                            </td>
                            <td>
                                <button type="button" class="pushable pushable-selecting">
                                    <span class="front-button">3F</span>
                                </button>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <button type="button" class="pushable">
                                    <span class="front-button">3A</span>
                                </button>
                            </td>
                            <td>
                                <button type="button" class="pushable">
                                    <span class="front-button">3B</span>
                                </button>
                            </td>
                            <td>
                                <button type="button" class="pushable">
                                    <span class="front-button">3C</span>
                                </button>
                            </td>
                            <td class="px-4"></td>
                            <td>
                                <button type="button" class="pushable">
                                    <span class="front-button">3D</span>
                                </button>
                            </td>
                            <td>
                                <button type="button" class="pushable">
                                    <span class="front-button">3E</span>
                                </button>
                            </td>
                            <td>
                                <button type="button" class="pushable pushable-selecting">
                                    <span class="front-button">3F</span>
                                </button>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <button type="button" class="pushable">
                                    <span class="front-button">3A</span>
                                </button>
                            </td>
                            <td>
                                <button type="button" class="pushable">
                                    <span class="front-button">3B</span>
                                </button>
                            </td>
                            <td>
                                <button type="button" class="pushable">
                                    <span class="front-button">3C</span>
                                </button>
                            </td>
                            <td class="px-4"></td>
                            <td>
                                <button type="button" class="pushable">
                                    <span class="front-button">3D</span>
                                </button>
                            </td>
                            <td>
                                <button type="button" class="pushable">
                                    <span class="front-button">3E</span>
                                </button>
                            </td>
                            <td>
                                <button type="button" class="pushable pushable-selecting">
                                    <span class="front-button">3F</span>
                                </button>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
            <div class="row justify-content-center">
                <div class="creen pt-3 pb-2 text-center font-weight-bold">
                    Screen
                </div>
            </div>
            <div class="row justify-content-center mt-3">
                <div class="note col-7 text-center">
                    <div class="row">
                        <div class="col-3">
                            <button class="btn-note-item btn btn-success"></button>
                            Seat is selecting
                        </div>
                        <div class="col-3">
                            <button class="btn-note-item btn " style="background-color: red;"></button>
                            Seat is sold
                        </div>
                        <div class="col-3">
                            <button class="btn-note-item btn btn-secondary"></button>
                            Seat can chose
                        </div>
                        <div class="col-3">
                            <button class="btn-note-item btn btn-primary" style="background-color: #8c00ff"></button>
                            Seat VIP
                        </div>
                    </div>
                </div>
            </div>

        <div class="row my-5 pr-3 justify-content-end">
            <button class="btn btn-primary mr-3 btnControl" id="btnBack" data-page="" data-date=""> <i class="fas fa-long-arrow-alt-left"></i> Back</button>
            <button class="btn btn-primary btnControl" id="btnContinue" data-id-movie="" data-id-time=""> Continue <i
                    class="fas fa-long-arrow-alt-right"></i></button>
        </div>