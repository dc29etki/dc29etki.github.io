<%--@elvariable id="list" type="java.util.List<com.azoft.effective.services.report.dashboard.DashboardRecord>" --%>
    <%--@elvariable id="community" type="com.azoft.effective.entity.community.Community" --%>
        <%--@elvariable id="dashboardRecordsSearchParams"
    type="com.azoft.effective.web.dashboard.forms.DashboardRecordsSearchParams" --%>
            <%--@elvariable id="units" type="java.util.List<com.azoft.effective.entity.community.Unit>" --%>
                <!DOCTYPE html>
                <html>

                <head>
                    <%@include file="/includes/dashboard/headers_new.jsp" %>
                        <c:set var="current_action" value="records" />
                        <script type="text/javascript" src="<c:url value=" /static/scripts/dashboard/records.js " />">
                        </script>
                        <link rel="stylesheet" type="text/css" href="<c:url value=" /static/css/dashboard/alerts.css " />
                            "/>
                        <link rel="stylesheet" type="text/css" href="<c:url value=" /static/css/dashboard/records.css?v5 " />"/>
                        <meta charset="utf-8">
                        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
                        <title>All Residents</title>
                        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
                        <script src="https://kit.fontawesome.com/72cf4fca1e.js" crossorigin="anonymous"></script>
                        <link href="https://cdn.datatables.net/1.10.18/css/dataTables.bootstrap4.min.css" rel="stylesheet">
                        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
                        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
                        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
                        <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.4.0/Chart.min.js"></script>
                        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
                        <script src="https://cdn.datatables.net/1.10.18/js/jquery.dataTables.min.js"></script>
                        <script src="https://cdn.datatables.net/1.10.18/js/dataTables.bootstrap4.min.js"></script>
                        <script src="https://unpkg.com/bootstrap-table@1.18.1/dist/bootstrap-table.min.js"></script>

                        <script>
                            $(function() {
                                $('#all_residents').DataTable({
                                    "pageLength": 10,
                                    "paging": true,
                                    "lengthChange": true,
                                    "searching": true,
                                    "ordering": true,
                                    "info": true,
                                    "autoWidth": true
                                });
                            });
                        </script>
                </head>

                <body class="fixed-nav sticky-footer bg-dark">
                    <%@include file="/includes/dashboard/menu.inc.jsp" %>
                        <%@include file="/includes/selected_community_with_print.jsp" %>
                            <%@include file="/includes/dashboard/submenu.jsp" %>
                                <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top" id="mainNav">
                                    <a class="navbar-brand" href="dashboard.html"><img style="width: 200px;" src="LT-logo.png" /></a>
                                    <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
                                    <div class="collapse navbar-collapse" id="navbarResponsive">
                                        <ul class="navbar-nav navbar-sidenav" id="exampleAccordion">
                                            <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Dashboard">
                                                <a class="nav-link" href="/index.html">
                                                    <i class="fa fa-fw fa-dashboard"></i>
                                                    <span class="nav-link-text">Dashboard</span>
                                                </a>
                                            </li>
                                            <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Tables">
                                                <a class="nav-link" href="/all_residents.html">
                                                    <i class="fa fa-fw fa-table"></i>
                                                    <span class="nav-link-text">All Residents</span>
                                                </a>
                                            </li>
                                            <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Charts">
                                                <a class="nav-link" href="/residents_no_insurance.html">
                                                    <i class="fa fa-users"></i>
                                                    <span class="nav-link-text">Residents No Insurance</span>
                                                </a>
                                            </li>
                                            <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Charts">
                                                <a class="nav-link" href="/units_no_insurance.html">
                                                    <i class="fa fa-building"></i>
                                                    <span class="nav-link-text">Units No Insurance</span>
                                                </a>
                                            </li>
                                            <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Link">
                                                <a class="nav-link" href="#">
                                                    <i class="fa fa-clock"></i>
                                                    <span class="nav-link-text">30 Day Expiration</span>
                                                </a>
                                            </li>
                                            <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Link">
                                                <a class="nav-link" href="#">
                                                    <i class="fa fa-people-arrows"></i>
                                                    <span class="nav-link-text">Predictive Charge List</span>
                                                </a>
                                            </li>
                                            <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Link">
                                                <a class="nav-link" href="#">
                                                    <i class="fa fa-comment-alt"></i>
                                                    <span class="nav-link-text">Community Reporting</span>
                                                </a>
                                            </li>
                                            <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Link">
                                                <a class="nav-link" href="#">
                                                    <i class="fa fa-question"></i>
                                                    <span class="nav-link-text">FAQ</span>
                                                </a>
                                            </li>
                                            <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Link">
                                                <a class="nav-link" href="#">
                                                    <i class="fa fa-arrow-circle-right"></i>
                                                    <span class="nav-link-text">Submit a Request</span>
                                                </a>
                                            </li>
                                        </ul>
                                        <ul class="navbar-nav ml-auto">
                                            <li class="nav-item dropdown my-auto">
                                                <a class="nav-link dropdown-toggle mr-lg-2" id="alertsDropdown" href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                    <i class="fa fa-fw fa-bell"></i>
                                                    <span class="d-lg-none">Alerts
                                                            <span class="badge badge-pill badge-warning">6 New</span>
                                                    </span>
                                                    <span class="indicator text-warning d-none d-lg-block">
                                                            <i class="fa fa-fw fa-circle"></i>
                                                        </span>
                                                </a>
                                                <div class="dropdown-menu" aria-labelledby="alertsDropdown">
                                                    <h6 class="dropdown-header">New Alerts:</h6>
                                                    <div class="dropdown-divider"></div>
                                                    <a class="dropdown-item" href="#">
                                                        <span class="text-success">
                                                                <strong>
                                                                    <i class="fa fa-long-arrow-up fa-fw"></i>Status
                                                                    Update</strong>
                                                            </span>
                                                        <span class="small float-right text-muted">11:21 AM</span>
                                                        <div class="dropdown-message small">This is an automated server response message. All systems are online.</div>
                                                    </a>
                                                    <div class="dropdown-divider"></div>
                                                    <a class="dropdown-item" href="#">
                                                        <span class="text-danger">
                                                                <strong>
                                                                    <i class="fa fa-long-arrow-down fa-fw"></i>Status
                                                                    Update</strong>
                                                            </span>
                                                        <span class="small float-right text-muted">11:21 AM</span>
                                                        <div class="dropdown-message small">This is an automated server response message. All systems are online.</div>
                                                    </a>
                                                    <div class="dropdown-divider"></div>
                                                    <a class="dropdown-item" href="#">
                                                        <span class="text-success">
                                                                <strong>
                                                                    <i class="fa fa-long-arrow-up fa-fw"></i>Status
                                                                    Update</strong>
                                                            </span>
                                                        <span class="small float-right text-muted">11:21 AM</span>
                                                        <div class="dropdown-message small">This is an automated server response message. All systems are online.</div>
                                                    </a>
                                                    <div class="dropdown-divider"></div>
                                                    <a class="dropdown-item small" href="#">View all alerts</a>
                                                </div>
                                            </li>
                                            <li class="nav-item dropdown my-auto">
                                                <a class="nav-link dropdown-toggle mr-lg-2" id="helpDropdown" href="#" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                    <i class="fa fa-question-circle"></i>
                                                    <span class="d-lg-none">Help Topics</span>
                                                </a>
                                                <div class="dropdown-menu" aria-labelledby="helpDropdown">
                                                    <h6 class="dropdown-header">Help Topics:</h6>
                                                    <div class="dropdown-divider"></div>
                                                    <a class="dropdown-item" href="#">
                                                        <strong>Help with Units</strong>
                                                    </a>
                                                    <div class="dropdown-divider"></div>
                                                    <a class="dropdown-item" href="#">
                                                        <strong>Help with Residents</strong>
                                                    </a>
                                                    <div class="dropdown-divider"></div>
                                                    <a class="dropdown-item" href="#">
                                                        <strong>Report a Problem</strong>
                                                    </a>
                                                    <div class="dropdown-divider"></div>
                                                    <a class="dropdown-item small" href="#">View all topics</a>
                                                </div>
                                            </li>
                                            <li class="nav-item">
                                                <form class="form-inline my-2 my-lg-0 mr-lg-2">
                                                    <div class="input-group">
                                                        <input class="form-control" type="text" placeholder="Search...">
                                                        <span class="input-group-append">
                                                                <button class="btn btn-primary" type="button">
                                                                    <i class="fa fa-search"></i>
                                                                </button>
                                                            </span>
                                                    </div>
                                                </form>
                                            </li>
                                            <li class="nav-item my-auto">
                                                <a class="nav-link" data-toggle="modal">
                                                    <i class="fa fa-gear"></i> Settings</a>
                                            </li>
                                            <li class="nav-item">
                                                <a class="nav-link" data-toggle="modal" data-target="#exampleModal">
                                                    <i class="fa fa-fw fa-sign-out"></i>Logout</a>
                                            </li>
                                        </ul>
                                    </div>
                                </nav>

                                <c:set var="url" value="/dashboard/records" />

                                <c:choose>
                                    <c:when test="${empty(list)}">
                                        <div style="margin: 10px 0; text-align: center;">
                                            <s:message code="caption.no_records" />
                                        </div>
                                    </c:when>
                                    <c:otherwise>
                                        <div id="list" class="dashboard-records-list">
                                            <tag:pager params="${dashboardRecordsSearchParams}" url="${url}" />
                                            <table class="datatable">
                                                <div class="content-wrapper">
                                                    <div class="container-fluid">
                                                        <ol class="breadcrumb">
                                                            <li class="breadcrumb-item">
                                                                <a href="index.html">Dashboard</a>
                                                            </li>
                                                            <li class="breadcrumb-item active">All Residents</li>
                                                        </ol>
                                                        <div class="card mb-3">
                                                            <div class="card-header d-flex justify-content-between w-100 align-items-center">
                                                                <div><i class="fa fa-table"></i> All Residents</div>
                                                            </div>
                                                            <div class="card-body">
                                                                <div class="table-responsive">
                                                                    <table id="all_residents" class="table table-striped table-bordered" cellspacing="0" width="100%">
                                                                        <thead>
                                                                            <tr>
                                                                                <th>Action</th>
                                                                                <th>Primary Resident</th>
                                                                                <th>Unit Address</th>
                                                                                <th>Lease End</th>
                                                                                <th>Expiration Date</th>
                                                                                <th>Proider</th>
                                                                            </tr>
                                                                        </thead>
                                                                        <tbody>

                                                                            <c:forEach items="${list}" var="record">
                                                                                <tr>
                                                                                    <td style="font-weight: bold;">
                                                                                        <c:set var="href" value="/dashboard/resident/view?id=${record.customer.id}" />
                                                                                        <c:if test="${record.customer.unit == null }">
                                                                                            <c:set var="href" value="${href}&community=${community.id}" />
                                                                                        </c:if>
                                                                                        <a href="<c:url value=" ${href} " />">
                                                                                            <s:message code="action.view" />
                                                                                        </a>
                                                                                        <tag:customer_managed customer="${record.customer}" />
                                                                                    </td>
                                                                                    <td style="text-align: left;">
                                                                                        <c:out value="${record.customer.fullName}" />
                                                                                    </td>
                                                                                    <td style="text-align: left;">
                                                                                        <c:out value="${record.customer.unitAddress}" />
                                                                                    </td>
                                                                                    <td>
                                                                                        <c:choose>
                                                                                            <c:when test="${record.customer.leaseExpDate != null}">
                                                                                                ${eff:dateStr(record.customer.leaseExpDate)}
                                                                                            </c:when>
                                                                                            <c:otherwise>
                                                                                                <span style="color: red">
                                                                                                        <s:message code="caption.no_lease"/>
                                                                                                    </span>
                                                                                            </c:otherwise>
                                                                                        </c:choose>
                                                                                    </td>
                                                                                    <td>
                                                                                        <c:set var="recordExpiration" value="${record.expiration}" />
                                                                                        <span ${recordExpiration.expired? 'class = "expired"': ''}>
                                                                                                <c:choose>
                                                                                                    <c:when test="${recordExpiration.date != null}">
                                                                                                        ${eff:dateStr(recordExpiration.date)}
                                                                                                    </c:when>
                                                                                                    <c:otherwise>
                                                                                                        <c:if test="${recordExpiration.expired}">
                                                                                                            <s:message code="caption.no_insurance"/>
                                                                                                        </c:if>
                                                                                                    </c:otherwise>
                                                                                                </c:choose>
                                                                                            </span>
                                                                                    </td>
                                                                                    <c:set var="recordProvider" value="${record.provider}" />
                                                                                    <td style="text-align: left;" title="${recordProvider}">${eff:strip(recordProvider)}</td>
                                                                                </tr>
                                                                            </c:forEach>
                                                                        </tbody>
                                                                    </table>
                                                                </div>
                                                            </div>
                                                            <div class="card-footer small text-muted">Updated yesterday at 11:59 PM</div>
                                                        </div>
                                                    </div>
                                                    <footer class="sticky-footer">
                                                        <div class="container">
                                                            <div class="text-center">
                                                                <small>© 2020 Effective Coverage. All rights
                                        reserved.</small>
                                                            </div>
                                                        </div>
                                                    </footer>
                                                </div>
                                            </table>
                                        </div>
                                    </c:otherwise>
                                </c:choose>
                </body>

                </html>

                <style>
                    html {
                        position: relative;
                        min-height: 100%;
                    }
                    
                    body {
                        overflow-x: hidden;
                        font-family: sofia-pro, sans-serif;
                    }
                    
                    .no-ins-count {
                        font-weight: 500;
                        font-size: 24px;
                    }
                    
                    .no-ins-count span {
                        font-weight: bold;
                    }
                    
                    .stat {
                        font-size: 14px;
                    }
                    
                    .stat1 {
                        background: #0081c5;
                        border-radius: 5px;
                        color: white;
                        font-size: 14px;
                    }
                    
                    .cards {}
                    
                    .row {}
                    
                    .navbar-toggler span {
                        color: white !important;
                    }
                    
                    body.sticky-footer {
                        margin-bottom: 32px;
                    }
                    
                    .container-fluid {
                        margin-bottom: 50px;
                    }
                    
                    body.sticky-footer .content-wrapper {
                        min-height: calc(100vh - 56px - 56px);
                    }
                    
                    body.fixed-nav {
                        padding-top: 56px;
                    }
                    
                    .content-wrapper {
                        min-height: calc(100vh - 56px);
                        padding-top: 1rem;
                    }
                    
                    .scroll-to-top {
                        position: fixed;
                        right: 15px;
                        bottom: 3px;
                        display: none;
                        width: 50px;
                        height: 50px;
                        text-align: center;
                        color: white;
                        background: rgba(52, 58, 64, 0.5);
                        line-height: 45px;
                    }
                    
                    .scroll-to-top:focus,
                    .scroll-to-top:hover {
                        color: white;
                    }
                    
                    .scroll-to-top:hover {
                        background: #202124;
                    }
                    
                    .bg-dark {
                        background: #202124 !important
                    }
                    
                    .scroll-to-top i {
                        font-weight: 800;
                    }
                    
                    .smaller {
                        font-size: 0.7rem;
                    }
                    
                    .o-hidden {
                        overflow: hidden !important;
                    }
                    
                    .z-0 {
                        z-index: 0;
                    }
                    
                    .z-1 {
                        z-index: 1;
                    }
                    
                    #mainNav .navbar-collapse {
                        overflow: auto;
                        max-height: 75vh;
                    }
                    
                    #mainNav .navbar-collapse .navbar-nav .nav-item .nav-link {
                        cursor: pointer;
                    }
                    
                    #mainNav .navbar-collapse .navbar-sidenav .nav-link-collapse:after {
                        float: right;
                        content: '\f107';
                        font-family: 'FontAwesome';
                    }
                    
                    #mainNav .navbar-collapse .navbar-sidenav .nav-link-collapse.collapsed:after {
                        content: '\f105';
                    }
                    
                    #mainNav .navbar-collapse .navbar-sidenav .sidenav-second-level,
                    #mainNav .navbar-collapse .navbar-sidenav .sidenav-third-level {
                        padding-left: 0;
                    }
                    
                    #mainNav .navbar-collapse .navbar-sidenav .sidenav-second-level>li>a,
                    #mainNav .navbar-collapse .navbar-sidenav .sidenav-third-level>li>a {
                        display: block;
                        padding: 0.5em 0;
                    }
                    
                    #mainNav .navbar-collapse .navbar-sidenav .sidenav-second-level>li>a:focus,
                    #mainNav .navbar-collapse .navbar-sidenav .sidenav-second-level>li>a:hover,
                    #mainNav .navbar-collapse .navbar-sidenav .sidenav-third-level>li>a:focus,
                    #mainNav .navbar-collapse .navbar-sidenav .sidenav-third-level>li>a:hover {
                        text-decoration: none;
                    }
                    
                    #mainNav .navbar-collapse .navbar-sidenav .sidenav-second-level>li>a {
                        padding-left: 1em;
                    }
                    
                    #mainNav .navbar-collapse .navbar-sidenav .sidenav-third-level>li>a {
                        padding-left: 2em;
                    }
                    
                    #mainNav .navbar-collapse .sidenav-toggler {
                        display: none;
                    }
                    
                    #mainNav .navbar-collapse .navbar-nav>.nav-item.dropdown>.nav-link {
                        position: relative;
                        min-width: 45px;
                    }
                    
                    #mainNav .navbar-collapse .navbar-nav>.nav-item.dropdown>.nav-link:after {
                        float: right;
                        width: auto;
                        content: '\f105';
                        border: none;
                        font-family: 'FontAwesome';
                    }
                    
                    #mainNav .navbar-collapse .navbar-nav>.nav-item.dropdown>.nav-link .indicator {
                        position: absolute;
                        top: 5px;
                        left: 21px;
                        font-size: 10px;
                    }
                    
                    #mainNav .navbar-collapse .navbar-nav>.nav-item.dropdown.show>.nav-link:after {
                        content: '\f107';
                    }
                    
                    #mainNav .navbar-collapse .navbar-nav>.nav-item.dropdown .dropdown-menu>.dropdown-item>.dropdown-message {
                        overflow: hidden;
                        max-width: none;
                        text-overflow: ellipsis;
                    }
                    
                    @media (min-width: 992px) {
                        #mainNav .navbar-brand {
                            width: 250px;
                        }
                        #mainNav .navbar-collapse {
                            overflow: visible;
                            max-height: none;
                        }
                        #mainNav .navbar-collapse .navbar-sidenav {
                            position: absolute;
                            top: 0;
                            left: 0;
                            -webkit-flex-direction: column;
                            -ms-flex-direction: column;
                            flex-direction: column;
                            margin-top: 56px;
                        }
                        #mainNav .navbar-collapse .navbar-sidenav>.nav-item {
                            width: 250px;
                            padding: 0;
                        }
                        #mainNav .navbar-collapse .navbar-sidenav>.nav-item>.nav-link {
                            padding: 1em;
                        }
                        #mainNav .navbar-collapse .navbar-sidenav>.nav-item .sidenav-second-level,
                        #mainNav .navbar-collapse .navbar-sidenav>.nav-item .sidenav-third-level {
                            padding-left: 0;
                            list-style: none;
                        }
                        #mainNav .navbar-collapse .navbar-sidenav>.nav-item .sidenav-second-level>li,
                        #mainNav .navbar-collapse .navbar-sidenav>.nav-item .sidenav-third-level>li {
                            width: 250px;
                        }
                        #mainNav .navbar-collapse .navbar-sidenav>.nav-item .sidenav-second-level>li>a,
                        #mainNav .navbar-collapse .navbar-sidenav>.nav-item .sidenav-third-level>li>a {
                            padding: 1em;
                        }
                        #mainNav .navbar-collapse .navbar-sidenav>.nav-item .sidenav-second-level>li>a {
                            padding-left: 2.75em;
                        }
                        #mainNav .navbar-collapse .navbar-sidenav>.nav-item .sidenav-third-level>li>a {
                            padding-left: 3.75em;
                        }
                        #mainNav .navbar-collapse .navbar-nav>.nav-item.dropdown>.nav-link {
                            min-width: 0;
                        }
                        #mainNav .navbar-collapse .navbar-nav>.nav-item.dropdown>.nav-link:after {
                            width: 24px;
                            text-align: center;
                        }
                        #mainNav .navbar-collapse .navbar-nav>.nav-item.dropdown .dropdown-menu>.dropdown-item>.dropdown-message {
                            max-width: 300px;
                        }
                    }
                    
                    #mainNav.fixed-top .sidenav-toggler {
                        display: none;
                    }
                    
                    @media (min-width: 992px) {
                        #mainNav.fixed-top .navbar-sidenav {
                            height: calc(100vh - 112px);
                        }
                        #mainNav.fixed-top .sidenav-toggler {
                            position: absolute;
                            top: 0;
                            left: 0;
                            display: flex;
                            -webkit-flex-direction: column;
                            -ms-flex-direction: column;
                            flex-direction: column;
                            margin-top: calc(100vh - 56px);
                        }
                        #mainNav.fixed-top .sidenav-toggler>.nav-item {
                            width: 250px;
                            padding: 0;
                        }
                        #mainNav.fixed-top .sidenav-toggler>.nav-item>.nav-link {
                            padding: 1em;
                        }
                    }
                    
                    #mainNav.fixed-top.navbar-dark .sidenav-toggler {
                        background-color: #212529;
                    }
                    
                    #mainNav.fixed-top.navbar-dark .sidenav-toggler a i {
                        color: #adb5bd;
                    }
                    
                    #mainNav.fixed-top.navbar-light .sidenav-toggler {
                        background-color: #dee2e6;
                    }
                    
                    #mainNav.fixed-top.navbar-light .sidenav-toggler a i {
                        color: rgba(0, 0, 0, 0.5);
                    }
                    
                    body.sidenav-toggled #mainNav.fixed-top .sidenav-toggler {
                        overflow-x: hidden;
                        width: 55px;
                    }
                    
                    body.sidenav-toggled #mainNav.fixed-top .sidenav-toggler .nav-item,
                    body.sidenav-toggled #mainNav.fixed-top .sidenav-toggler .nav-link {
                        width: 55px !important;
                    }
                    
                    body.sidenav-toggled #mainNav.fixed-top #sidenavToggler i {
                        -webkit-transform: scaleX(-1);
                        -moz-transform: scaleX(-1);
                        -o-transform: scaleX(-1);
                        transform: scaleX(-1);
                        filter: FlipH;
                        -ms-filter: 'FlipH';
                    }
                    
                    #mainNav.static-top .sidenav-toggler {
                        display: none;
                    }
                    
                    @media (min-width: 992px) {
                        #mainNav.static-top .sidenav-toggler {
                            display: flex;
                        }
                    }
                    
                    body.sidenav-toggled #mainNav.static-top #sidenavToggler i {
                        -webkit-transform: scaleX(-1);
                        -moz-transform: scaleX(-1);
                        -o-transform: scaleX(-1);
                        transform: scaleX(-1);
                        filter: FlipH;
                        -ms-filter: 'FlipH';
                    }
                    
                    .content-wrapper {
                        overflow-x: hidden;
                        background: white;
                    }
                    
                    @media (min-width: 992px) {
                        .content-wrapper {
                            margin-left: 250px;
                        }
                    }
                    
                    #sidenavToggler i {
                        font-weight: 800;
                    }
                    
                    .navbar-sidenav-tooltip.show {
                        display: none;
                    }
                    
                    @media (min-width: 992px) {
                        body.sidenav-toggled .content-wrapper {
                            margin-left: 55px;
                        }
                    }
                    
                    body.sidenav-toggled .navbar-sidenav {
                        width: 55px;
                    }
                    
                    body.sidenav-toggled .navbar-sidenav .nav-link-text {
                        display: none;
                    }
                    
                    body.sidenav-toggled .navbar-sidenav .nav-item,
                    body.sidenav-toggled .navbar-sidenav .nav-link {
                        width: 55px !important;
                    }
                    
                    body.sidenav-toggled .navbar-sidenav .nav-item:after,
                    body.sidenav-toggled .navbar-sidenav .nav-link:after {
                        display: none;
                    }
                    
                    body.sidenav-toggled .navbar-sidenav .nav-item {
                        white-space: nowrap;
                    }
                    
                    body.sidenav-toggled .navbar-sidenav-tooltip.show {
                        display: flex;
                    }
                    
                    #mainNav.navbar-dark .navbar-collapse .navbar-sidenav .nav-link-collapse:after {
                        color: white;
                    }
                    
                    #mainNav.navbar-dark .navbar-collapse .navbar-sidenav>.nav-item>.nav-link {
                        color: white;
                    }
                    
                    #mainNav.navbar-dark .navbar-collapse .navbar-sidenav>.nav-item>.nav-link:hover {
                        color: #adb5bd;
                    }
                    
                    #mainNav.navbar-dark .navbar-collapse .navbar-sidenav>.nav-item .sidenav-second-level>li>a,
                    #mainNav.navbar-dark .navbar-collapse .navbar-sidenav>.nav-item .sidenav-third-level>li>a {
                        color: white;
                    }
                    
                    #mainNav.navbar-dark .navbar-collapse .navbar-sidenav>.nav-item .sidenav-second-level>li>a:focus,
                    #mainNav.navbar-dark .navbar-collapse .navbar-sidenav>.nav-item .sidenav-second-level>li>a:hover,
                    #mainNav.navbar-dark .navbar-collapse .navbar-sidenav>.nav-item .sidenav-third-level>li>a:focus,
                    #mainNav.navbar-dark .navbar-collapse .navbar-sidenav>.nav-item .sidenav-third-level>li>a:hover {
                        color: #adb5bd;
                    }
                    
                    #mainNav.navbar-dark .navbar-collapse .navbar-nav>.nav-item.dropdown>.nav-link:after {
                        color: #adb5bd;
                    }
                    
                    @media (min-width: 992px) {
                        #mainNav.navbar-dark .navbar-collapse .navbar-sidenav {
                            background: #202124;
                        }
                        #mainNav.navbar-dark .navbar-collapse .navbar-sidenav li.active a {
                            color: white !important;
                            background-color: #495057;
                        }
                        #mainNav.navbar-dark .navbar-collapse .navbar-sidenav li.active a:focus,
                        #mainNav.navbar-dark .navbar-collapse .navbar-sidenav li.active a:hover {
                            color: white;
                        }
                        #mainNav.navbar-dark .navbar-collapse .navbar-sidenav>.nav-item .sidenav-second-level,
                        #mainNav.navbar-dark .navbar-collapse .navbar-sidenav>.nav-item .sidenav-third-level {
                            background: #202124;
                        }
                    }
                    
                    #mainNav.navbar-light .navbar-collapse .navbar-sidenav .nav-link-collapse:after {
                        color: rgba(0, 0, 0, 0.5);
                    }
                    
                    #mainNav.navbar-light .navbar-collapse .navbar-sidenav>.nav-item>.nav-link {
                        color: rgba(0, 0, 0, 0.5);
                    }
                    
                    #mainNav.navbar-light .navbar-collapse .navbar-sidenav>.nav-item>.nav-link:hover {
                        color: rgba(0, 0, 0, 0.7);
                    }
                    
                    #mainNav.navbar-light .navbar-collapse .navbar-sidenav>.nav-item .sidenav-second-level>li>a,
                    #mainNav.navbar-light .navbar-collapse .navbar-sidenav>.nav-item .sidenav-third-level>li>a {
                        color: rgba(0, 0, 0, 0.5);
                    }
                    
                    #mainNav.navbar-light .navbar-collapse .navbar-sidenav>.nav-item .sidenav-second-level>li>a:focus,
                    #mainNav.navbar-light .navbar-collapse .navbar-sidenav>.nav-item .sidenav-second-level>li>a:hover,
                    #mainNav.navbar-light .navbar-collapse .navbar-sidenav>.nav-item .sidenav-third-level>li>a:focus,
                    #mainNav.navbar-light .navbar-collapse .navbar-sidenav>.nav-item .sidenav-third-level>li>a:hover {
                        color: rgba(0, 0, 0, 0.7);
                    }
                    
                    #mainNav.navbar-light .navbar-collapse .navbar-nav>.nav-item.dropdown>.nav-link:after {
                        color: rgba(0, 0, 0, 0.5);
                    }
                    
                    @media (min-width: 992px) {
                        #mainNav.navbar-light .navbar-collapse .navbar-sidenav {
                            background: #f8f9fa;
                        }
                        #mainNav.navbar-light .navbar-collapse .navbar-sidenav li.active a {
                            color: #000 !important;
                            background-color: #e9ecef;
                        }
                        #mainNav.navbar-light .navbar-collapse .navbar-sidenav li.active a:focus,
                        #mainNav.navbar-light .navbar-collapse .navbar-sidenav li.active a:hover {
                            color: #000;
                        }
                        #mainNav.navbar-light .navbar-collapse .navbar-sidenav>.nav-item .sidenav-second-level,
                        #mainNav.navbar-light .navbar-collapse .navbar-sidenav>.nav-item .sidenav-third-level {
                            background: #f8f9fa;
                        }
                    }
                    
                    .navbar-nav a {
                        color: white !important;
                    }
                    
                    .card-body-icon {
                        position: absolute;
                        z-index: 0;
                        top: -25px;
                        right: -25px;
                        font-size: 5rem;
                        -webkit-transform: rotate(15deg);
                        -ms-transform: rotate(15deg);
                        transform: rotate(15deg);
                    }
                    
                    @media (min-width: 576px) {
                        .card-columns {
                            column-count: 1;
                        }
                    }
                    
                    @media (min-width: 768px) {
                        .card-columns {
                            column-count: 2;
                        }
                    }
                    
                    @media (min-width: 1200px) {
                        .card-columns {
                            column-count: 2;
                        }
                    }
                    
                    .card-login {
                        max-width: 25rem;
                    }
                    
                    .card-register {
                        max-width: 40rem;
                    }
                    
                    footer.sticky-footer {
                        position: absolute;
                        right: 0;
                        bottom: 0;
                        width: 100%;
                        height: 56px;
                        background-color: #e9ecef;
                        line-height: 55px;
                    }
                    
                    @media (min-width: 992px) {
                        footer.sticky-footer {
                            width: calc(100% - 250px);
                        }
                    }
                    
                    @media (min-width: 992px) {
                        body.sidenav-toggled footer.sticky-footer {
                            width: calc(100% - 55px);
                        }
                    }
                    
                    .dropdown-message,
                    a.dropdown-item {
                        color: #3f3f3f !important;
                    }
                </style>