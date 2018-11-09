<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Sửa người dùng</title>
    <!-- plugins:css -->
    <link rel="stylesheet" href="<%request.getServletPath();%>/assests/node_modules/mdi/css/materialdesignicons.min.css">
    <link rel="stylesheet" href="<%request.getServletPath();%>/assests/node_modules/flag-icon-css/css/flag-icon.min.css">
    <link rel="stylesheet" href="<%request.getServletPath();%>/assests/node_modules/perfect-scrollbar/css/perfect-scrollbar.css">
    <!-- endinject -->
    <!-- plugin css for this page -->
    <link rel="stylesheet" href="<%request.getServletPath();%>/assests/node_modules/jvectormap/jquery-jvectormap.css"/>
    <!-- End plugin css for this page -->
    <!-- inject:css -->
    <link rel="stylesheet" href="<%request.getServletPath();%>/assests/css/style.css">
    <!-- endinject -->
    <link rel="shortcut icon" href="<%request.getServletPath();%>/assests/images/favicon.png"/>
    <style>
        .results tr[visible='false'],
        .no-result {
            display: none;
        }

        .results tr[visible='true'] {
            display: table-row;
        }

        .counter {
            padding: 8px;
            color: #ccc;
        }

        .text {
            overflow: hidden;
            text-overflow: ellipsis;
            display: -webkit-box;
            line-height: 16px;
            max-height: 32px;
            -webkit-line-clamp: 1;
            -webkit-box-orient: vertical;
        }
    </style>
</head>

<body>
<div class="container-scroller">
    <!-- partial:partials/_navbar.html -->
    <nav class="navbar col-lg-12 col-12 p-0 fixed-top d-flex flex-row">
        <div class="text-center navbar-brand-wrapper d-flex align-items-center justify-content-center">
            <a class="navbar-brand brand-logo" href="" style="color: #616161;">
                <b>ADMINISTRATOR</b>
            </a>
            <a class="navbar-brand brand-logo-mini" href=""><img src="<%request.getServletPath();%>/assests/images/logo.png" alt="logo"/></a>
        </div>
        <div class="navbar-menu-wrapper d-flex align-items-stretch">
            <button class="navbar-toggler navbar-toggler align-self-center mr-2" type="button" data-toggle="minimize">
                <i class="mdi mdi-menu"></i>
            </button>
            <ul class="navbar-nav">
                <li class="nav-item">
                    <a class="nav-link" href="#">
                        <i class="mdi mdi-reload"></i>
                    </a>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link count-indicator dropdown-toggle" id="notificationDropdown" href="#"
                            data-toggle="dropdown">
                        <i class="mdi mdi-bell-outline"></i>
                        <span class="count"></span>
                    </a>
                    <div class="dropdown-menu navbar-dropdown navbar-dropdown-large preview-list"
                            aria-labelledby="notificationDropdown">
                        <h6 class="p-3 mb-0 text-center">Thông báo</h6>
                        <a class="dropdown-item preview-item">
                            <div class="preview-thumbnail">
                                <img src="<%request.getServletPath();%>/assests/images/faces/face4.jpg" class="profile-pic">
                            </div>
                            <div class="preview-item-content">
                                <p class="mb-0">Dany Miles <span class="text-small text-muted">commented on your
                                            photo</span></p>
                            </div>
                        </a>
                        <a class="dropdown-item preview-item">
                            <div class="preview-thumbnail">
                                <img src="<%request.getServletPath();%>/assests/images/faces/face3.jpg" class="profile-pic">
                            </div>
                            <div class="preview-item-content">
                                <p class="mb-0">James <span class="text-small text-muted">posted a photo on your
                                            wall</span></p>
                            </div>
                        </a>
                        <a class="dropdown-item preview-item">
                            <div class="preview-thumbnail">
                                <img src="<%request.getServletPath();%>/assests/images/faces/face2.jpg" class="profile-pic">
                            </div>
                            <div class="preview-item-content">
                                <p class="mb-0">Alex <span class="text-small text-muted">just mentioned you in his
                                            post</span></p>
                            </div>
                        </a>
                        <div class="dropdown-divider"></div>
                        <p class="p-3 mb-0 text-center">View all activities</p>
                    </div>
                </li>
                <li class="nav-item nav-search">
                    <form class="nav-link form-inline mt-2 mt-md-0 d-none d-lg-flex">
                        <div class="input-group">
                            <div class="input-group-prepend">
                                    <span class="input-group-text">
                                        <i class="mdi mdi-magnify"></i>
                                    </span>
                            </div>
                            <input type="text" class="form-control" placeholder="Tìm kiếm">
                        </div>
                    </form>
                </li>
            </ul>
            <ul class="navbar-nav navbar-nav-right">
                <li class="nav-item  nav-profile dropdown">
                    <a class="nav-link" href="#">
                        <i class="mdi mdi-home-circle"></i>
                    </a>
                </li>
            </ul>
            <button class="navbar-toggler navbar-toggler-right d-lg-none align-self-center" type="button"
                    data-toggle="offcanvas">
                <span class="mdi mdi-menu"></span>
            </button>
        </div>
    </nav>
    <!-- partial -->
    <div class="container-fluid page-body-wrapper">
        <!-- partial:partials/_settings-panel.html -->
        <div class="theme-setting-wrapper">
            <div id="settings-trigger"><i class="mdi mdi-settings"></i></div>
            <div id="theme-settings" class="settings-panel">
                <i class="settings-close mdi mdi-close"></i>
                <p class="settings-heading">SIDEBAR SKINS</p>
                <div class="sidebar-bg-options selected" id="sidebar-light-theme">
                    <div class="img-ss rounded-circle bg-light border mr-3"></div>
                    Light
                </div>
                <div class="sidebar-bg-options" id="sidebar-dark-theme">
                    <div class="img-ss rounded-circle bg-dark border mr-3"></div>
                    Dark
                </div>
                <p class="settings-heading mt-2">HEADER SKINS</p>
                <div class="color-tiles mx-0 px-4">
                    <div class="tiles light"></div>
                    <div class="tiles success"></div>
                    <div class="tiles warning"></div>
                    <div class="tiles danger"></div>
                    <div class="tiles pink"></div>
                    <div class="tiles info"></div>
                    <div class="tiles dark"></div>
                    <div class="tiles default"></div>
                </div>
            </div>
        </div>
        <!-- partial -->
        <!-- partial:partials/_sidebar.html -->
        <nav class="sidebar sidebar-offcanvas" id="sidebar">
            <ul class="nav">
                <li class="nav-item nav-profile">
                    <a href="#" class="nav-link">
                            <span class="nav-profile-image">
                                <img src="<%request.getServletPath();%>/assests/images/faces/face1.jpg" alt="profile">
                                <span class="login-status online"></span>
                                <!--change to offline or busy as needed-->
                            </span>
                    </a>
                </li>
                <li class="nav-item nav-category">
                    <span class="nav-link"><b>QUẢN TRỊ WEBSITE</b></span>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="./admin-dashboard.html">
                        <i class="mdi mdi-compass-outline menu-icon"></i>
                        <span class="menu-title">Dashboard</span>
                    </a>
                </li>
                <li class="nav-item nav-category">
                    <span class="nav-link"><b>DANH MỤC QUẢN LÝ</b></span>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="./admin-quan-ly-mon-an.html">
                        <i class="mdi mdi-food-fork-drink menu-icon"></i>
                        <span class="menu-title">Quản Lý Món Ăn</span>
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="./admin-quan-ly-hoa-don.html">
                        <i class="mdi mdi-content-paste menu-icon"></i>
                        <span class="menu-title">Quản Lý Hóa Đơn</span>
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="./admin-quan-ly-dat-ban.html">
                        <i class="mdi mdi-table menu-icon"></i>
                        <span class="menu-title">Quản Lý Đặt Bàn</span>
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="admin-thuc-don.html">
                        <i class="mdi mdi-silverware-variant menu-icon"></i>
                        <span class="menu-title">Quản Lý Thực Đơn</span>
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" data-toggle="collapse" href="#page-layouts" aria-expanded="false"
                            aria-controls="page-layouts">
                        <i class="mdi mdi-arrow-expand-all menu-icon"></i>
                        <span class="menu-title">Quản Lý Người Dùng</span>
                        <i class="menu-arrow"></i>
                    </a>
                    <div class="collapse" id="page-layouts">
                        <ul class="nav flex-column sub-menu">
                            <li class="nav-item d-none d-lg-block"><a class="nav-link"
                                    href="admin-nguoi-dung.html">Người Dùng</a></li>
                            <li class="nav-item"><a class="nav-link" href="admin-quan-tri-vien.html">Quản Trị Viên</a>
                            </li>
                        </ul>
                    </div>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="admin-bai-viet.html">
                        <i class="mdi mdi-account-key menu-icon"></i>
                        <span class="menu-title">Quản Lý Bài viết</span>
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="admin-nghiep-vu.html">
                        <i class="mdi mdi-account-key menu-icon"></i>
                        <span class="menu-title">Quản Nghiệp vụ</span>
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="admin-quyen.html">
                        <i class="mdi mdi-account-key menu-icon"></i>
                        <span class="menu-title">Quản Lý Quyền</span>
                    </a>
                </li>
            </ul>
        </nav>
        <!-- partial -->
        <div class="main-panel">
            <div class="content-wrapper">
                <!-- Hiện content ở chổ này -->
                <div class="card" style="margin: 16px 0;">
                    <div class="card-body">
                        <h3 class="card-title">Sửa người dùng: Nguyễn Lê Điền</h3>
                        <p class="card-description">
                            Vui lòng nhập đầy đủ thông tin yêu cầu
                        </p>
                        <form class="forms-sample" action="admin/sua-nguoi-dung" method="post">
                            <div class="form-row">
                                <div class="form-group">
                                    <label for="allow">Trạng thái tài khoản</label>
                                    <div class="form-check form-check-flat">
                                        <label class="form-check-label">
                                            <input type="checkbox" class="form-check-input" id="allow" name="chkAllow"
                                                    checked>
                                            Cho phép hoạt động
                                        </label>
                                    </div>
                                </div>
                            </div>
                            <div class="form-row">
                                <div class="col-md-6 col-sm-12 form-group">
                                    <label for="ho-dem">Họ đệm (bắt buộc)</label>
                                    <input readonly type="text" class="form-control" id="ho-dem" placeholder="Họ đệm"
                                            value="Nguyễn Lê">
                                    <small class="text-danger" id="validate-ho-dem"></small>
                                </div>
                                <div class="col-md-6 col-sm-12 form-group">
                                    <label for="ten">Tên (bắt buộc)</label>
                                    <input readonly type="text" class="form-control" id="ten" placeholder="Tên"
                                            value="Điền">
                                    <small class="text-danger" id="validate-ten"></small>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="email">Địa chỉ email (bắt buộc)</label>
                                <input readonly type="email" class="form-control" id="email" placeholder="Email"
                                        value="ngdien1998@gmail.com">
                                <small class="text-danger" id="validate-email"></small>
                            </div>
                            <div class="form-row">
                                <div class="form-group col-md-6 col-sm-12">
                                    <label for="mat-khau">Mật khẩu (bắt buộc)</label>
                                    <input readonly type="password" class="form-control" id="mat-khau"
                                            placeholder="Mật khẩu"
                                            value="1234567890">
                                    <small class="text-danger" id="validate-mat-khau"></small>
                                </div>
                                <div class="form-group col-md-6 col-sm-12">
                                    <label for="xac-nhan-mat-khau">Xác nhận mật khẩu (bắt buộc)</label>
                                    <input readonly type="password" class="form-control" id="xac-nhan-mat-khau"
                                            placeholder="Xác nhận mật khẩu" value="1234567890">
                                    <small class="text-danger" id="validate-xac-nhan-mat-khau"></small>
                                </div>
                            </div>
                            <div class="form-row">
                                <div class="form-group col-md-4 col-sm-6 col-12">
                                    <label>Giới tính</label>
                                    <div class="row" style="padding-left: 16px;">
                                        <div class="col form-radio">
                                            <label class="form-check-label">
                                                <input disabled type="radio" class="form-check-input" name="radNam"
                                                        id="nam" checked>Nam
                                                <i class="input-helper"></i>
                                            </label>
                                        </div>
                                        <div class="col form-radio">
                                            <label class="form-check-label">
                                                <input disabled type="radio" class="form-check-input" name="radNu"
                                                        id="nu">Nữ
                                                <i class="input-helper"></i>
                                            </label>
                                        </div>
                                    </div>
                                </div>
                                <div class="form-group col-md-4 col-sm-6 col-12">
                                    <label for="ngay-sinh">Ngày sinh</label>
                                    <input type="date" readonly class="form-control" id="ngay-sinh" value="22/11/1998">
                                    <small class="text-danger" id="validate-ngay-sinh"></small>
                                </div>
                                <div class="form-group col-md-4 col-sm-12">
                                    <label for="xac-nhan-mat-khau">Số điện thoại</label>
                                    <input readonly type="text" class="form-control" id="dien-thoai"
                                            placeholder="Số điện thoại" value="0967397916">
                                    <small class="text-danger" id="validate-dien-thoai"></small>
                                </div>
                            </div>
                            <div class="form-group">
                                <label>Ảnh đại diện</label>
                                <input type="file" name="anhDaiDien" class="file-upload-default">
                                <div class="input-group col-xs-12">
                                    <input type="text" class="form-control file-upload-info" readonly
                                            placeholder="Ảnh đại diện"
                                            value="images/profile1.pg">
                                    <span class="input-group-append">
                          <button class="btn btn-primary" type="button">Chọn ảnh từ Server</button>
                        </span>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="dia-chi">Địa chỉ</label>
                                <input readonly type="text" class="form-control" id="dia-chi" placeholder="Địa chỉ"
                                        value="75/6, Trương Văn Hải, phường Tăng Nhơn Phú B, Quận 9">
                            </div>
                            <div class="form-row justify-content-center">
                                <input readonly type="submit" class="btn btn-primary btn-rounded" id="btn-submit"
                                        value="Sửa người dùng"/>
                                <a href="admin-nguoi-dung.html" class="btn btn-success btn-rounded"
                                        style="margin-left: 16px;">Về trang chủ</a>
                            </div>
                        </form>
                    </div>
                </div>
                <!-- Kết thúc content -->
            </div>
            <!-- content-wrapper ends -->
            <!-- partial:partials/_footer.html -->
        </div>
        <!-- main-panel ends -->
    </div>
    <!-- page-body-wrapper ends -->
    <footer class="footer">
        <div class="container-fluid clearfix">
                <span class="text-muted d-block text-center text-sm-left d-sm-inline-block">Copyright © 2018 <a
                        href="#">Quản lý nhà hàng và orderfood online.</a>
                    All rights reserved.</span>
        </div>
    </footer>
    <!-- partial -->
</div>
<!-- container-scroller -->

<!-- plugins:js -->
<script src="<%request.getServletPath();%>/assests/node_modules/jquery/dist/jquery.min.js"></script>
<script src="<%request.getServletPath();%>/assests/node_modules/popper.js/dist/umd/popper.min.js"></script>
<script src="<%request.getServletPath();%>/assests/node_modules/bootstrap/dist/js/bootstrap.min.js"></script>
<script src="<%request.getServletPath();%>/assests/node_modules/perfect-scrollbar/dist/perfect-scrollbar.min.js"></script>
<!-- endinject -->
<!-- Plugin js for this page-->
<script src="<%request.getServletPath();%>/assests/node_modules/jquery-sparkline/jquery.sparkline.min.js"></script>
<!-- End plugin js for this page-->
<!-- inject:js -->
<script src="<%request.getServletPath();%>/assests/js/off-canvas.js"></script>
<script src="<%request.getServletPath();%>/assests/js/hoverable-collapse.js"></script>
<script src="<%request.getServletPath();%>/assests/js/misc.js"></script>
<script src="<%request.getServletPath();%>/assests/js/settings.js"></script>
<script src="<%request.getServletPath();%>/assests/js/todolist.js"></script>
<!-- endinject -->
<!-- Custom js for this page-->
<script src="<%request.getServletPath();%>/assests/js/todolist.js"></script>
<script src="<%request.getServletPath();%>/assests/js/dashboard.js"></script>
<!-- End custom js for this page-->

</body>

</html>