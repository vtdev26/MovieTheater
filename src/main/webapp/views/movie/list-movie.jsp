<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<h3 class="row justify-content-center font-weight-bold">Movie List</h3>
                    <div class="mt-2 mr-4">

                        <div class="row mt-5">
                            <div class="form-input ml-3">
                                <button type="button" class="btn btn-primary" id="addMovie"><i class="fa fa-plus" aria-hidden="true"></i><span class="ml-2">Add new</span> </button>
                            </div>
                        </div>

                        <div class="row mt-5">
                            <div class="col-lg-9">
                            </div>

                            <div class="col-lg-3">
                                <div class="row">
                                    <div class="input-group rounded mr-3">
                                        <input id="searchInputMovie"
                                            type="search" class="form-control rounded" placeholder="Search"
                                            aria-label="Search" aria-describedby="search-addon" value="${searchData}"/>
                                            
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="card mt-3" id="table-movie">
                            <hr>
                            <div class="row card-body">
                                <table class="table table-bordered table-striped">
                                    <thead>
                                        <tr>
                                            <th scope="col">#</th>
                                            <th scope="col">ID</th>
                                            <th scope="col">Movie(ENG)</th>
                                            <th scope="col">Movie(VN)</th>
                                            <th scope="col">Release Date</th>
                                            <th scope="col">Movie Production Company</th>
                                            <th scope="col">Duration</th>
                                            <th scope="col">Version</th>
                                            <th scope="col">Detail</th>
                                            <th scope="col">Delete</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <c:forEach items="${movies}" var="movie" varStatus="loop">
                                    		<tr>
	                                            <td class="number">${loop.index+1}</td>
	                                            <td>${movie.movieId}</td>
	                                            <td>${movie.movieNameEnglish}</td>
	                                            <td>${movie.movieNameVn}</td>
	                                            <td><fmt:formatDate value="${movie.fromDate}" pattern="dd/MM/yyyy" /></td>
	                                            <td>${movie.movieProductCompany}</td>
	                                            <td>${movie.duration}</td>
	                                            <td>${movie.version}</td>
	                                            <td> <a href="#" id="editMovie" value="${movie.movieId}"><i class="fas fa-edit"></i></a></td>
	                                            <td><a href="#" id="deleteMovie" value="${movie.movieId}"><i class="fas fa-trash-alt"></i></a></td>
                                        	</tr>
                                    	</c:forEach>
                                        
                                    </tbody>
                                </table>
                            </div>

                            <div class="row" ${totalPage==0?'hidden':''}>
                                <div class="col-lg-12 right">
                                    <div aria-label="Page navigation example">
	                                        <ul class="pagination">
	            								<li class="page-item ${currentPage == 1?'disabled':''}"><a class="page-link " value="${currentPage-1}" href="#" id="pre">Previous</a></li>
	            									<c:forEach begin="1" end="${numOfPages}" var="page">
	                									<li class="page-item ${currentPage == page?'active':''}"><a class="page-link" href="#" id="page" value="${page}">${page}</a></li>
	            									</c:forEach>
	            								<li class="page-item  ${currentPage == numOfPages?'disabled':''}"><a class="page-link " value="${currentPage+1}" id="next" href="#">Next</a></li>
	        								</ul>
                                        
                                    </div>
                                </div>
                            </div>
                        </div>
