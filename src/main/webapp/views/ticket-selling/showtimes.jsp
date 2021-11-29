<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
	                    <div class="wrapper">
                        <div class="content">
                            <div class="content__title">
                                <span>showtimes</span>
                            </div>
                            <div class="content__time">
								<c:forEach var="dateItem" items="${listDates}">
								<button class="content__time--label ${dateSelecting == dateItem ? 'checked' : ''}" value="${dateItem}">
                                    <span class="number">
                    				<fmt:parseDate value="${dateItem}" pattern="yyyy-MM-dd" var="parsedDateTime" type="both" />                                    
                                    <fmt:formatDate pattern="dd/MM" value="${parsedDateTime}" />
                                    </span>
                                    <span class="date">${fn:substring(dateItem.dayOfWeek, 0, 3)}</span>
                                </button>
								</c:forEach>
                            </div>
                            <div class="content__movie">
								<c:forEach var="movieDate" items="${movieDates}">		
								    <div class="movie">
                                    <div class="movie__avatar">
                                        <img src="/resources/img/ticket-selling/${movieDate.movie.largeImage}" alt="">
                                    </div>
                                    <div class="movie__detail">
                                        <div class="movie__detail--name">
                                            <span>${movieDate.movie.movieNameVn}</span>
                                        </div>
                                        <div class="movie__detail--description">
                                            <span>${movieDate.movie.movieNameEnglish}</span>
                                        </div>
                                        <div class="movie__detail--time">
											<c:forEach var="schedule" items="${movieDate.movie.movieSchedules}">
                                            <div class="time">
                                                ${schedule.schedule.scheduleTime}
                                            </div>											
											</c:forEach>
                                        </div>
                                    </div>
                                </div>
								</c:forEach>
								<c:if test="${movieDates != null}">
                                <nav aria-label="...">
									<ul class="pagination">
										<li class="page-item ${pageIndex == 1 ? 'disabled' : ''}"><a class="page-link" id="${previousPage}" href="#">Previous</a></li>
										<c:forEach begin="1" end="${totalPages}" var="page">
											<li class="page-item ${page == pageIndex ? 'active' : ''}"><a class="page-link" id="${page}" href="#">${page}
													<span class="sr-only">(current)</span>
											</a></li>
										</c:forEach>
										<li class="page-item ${pageIndex == totalPages ? 'disabled' : ''}"><a class="page-link" id="${nextPage}" href="#">Next</a></li>
									</ul>
                                  </nav>								
								</c:if>
                            </div>
                        </div>
                    </div>