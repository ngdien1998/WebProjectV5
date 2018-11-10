<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<jsp:include page="_shared/admin/top-of-page.jsp" flush="true" />

<div class="card">
    <div class="card-body">
        <h2 class="card-title">Quản lý quản trị viên</h2>
        <div class="row">
            <div class="col-sm-12 col-md-6">
                <a href="admin-them-quan-tri-vien.html" class="btn btn-primary btn-rounded">Thêm mới</a>
            </div>
            <div class="col-sm-12 col-md-6">
                <input type="search" class="form-control" placeholder="Tìm kiếm quản trị viên"
                        aria-controls="order-listing">
            </div>
        </div>
        <table class="table table-hover" style="margin: 16px 0;">
            <thead>
            <tr>
                <th>Ảnh</th>
                <th>Tên</th>
                <th>Email</th>
                <th>Ngày sinh</th>
                <th>Nữ</th>
                <th>Điện thoại</th>
                <th>Trạng thái</th>
                <th></th>
            </tr>
            </thead>
            <tbody>
            <tr>
                <td><img src="assests/images/faces/face1.jpg"/></td>
                <td>Nguyễn Lê Điền</td>
                <td>ngdien1998@gmail.com</td>
                <td>22/11/1998</td>
                <td>No</td>
                <td>0967397916</td>
                <td>Kích hoạt</td>
                <td>
                    <a href="admin-xem-quan-tri-vien.html?email=ngdien1998@gmail.com">Xem</a> |
                    <a href="admin-sua-quan-tri-vien.html?email=ngdien1998@gmail.com">Sửa</a> |
                    <a href="admin-xoa-quan-tri-vien.html?email=ngdien1998@gmail.com">Xóa</a> |
                    <a href="admin-phan-quyen.html?email=ngdien1998@gmail.com">Phân quyền</a>
                </td>
            </tr>
            <tr>
                <td><img src="assests/images/faces/face1.jpg"/></td>
                <td>Nguyễn Lê Điền</td>
                <td>ngdien1998@gmail.com</td>
                <td>22/11/1998</td>
                <td>No</td>
                <td>0967397916</td>
                <td>Kích hoạt</td>
                <td>
                    <a href="admin-xem-quan-tri-vien.html?email=ngdien1998@gmail.com">Xem</a> |
                    <a href="admin-sua-quan-tri-vien.html?email=ngdien1998@gmail.com">Sửa</a> |
                    <a href="admin-xoa-quan-tri-vien.html?email=ngdien1998@gmail.com">Xóa</a> |
                    <a href="admin-phan-quyen.html?email=ngdien1998@gmail.com">Phân quyền</a>
                </td>
            </tr>
            <tr>
                <td><img src="assests/images/faces/face1.jpg"/></td>
                <td>Nguyễn Lê Điền</td>
                <td>ngdien1998@gmail.com</td>
                <td>22/11/1998</td>
                <td>No</td>
                <td>0967397916</td>
                <td>Kích hoạt</td>
                <td>
                    <a href="admin-xem-quan-tri-vien.html?email=ngdien1998@gmail.com">Xem</a> |
                    <a href="admin-sua-quan-tri-vien.html?email=ngdien1998@gmail.com">Sửa</a> |
                    <a href="admin-xoa-quan-tri-vien.html?email=ngdien1998@gmail.com">Xóa</a> |
                    <a href="admin-phan-quyen.html?email=ngdien1998@gmail.com">Phân quyền</a>
                </td>
            </tr>
            <tr>
                <td><img src="assests/images/faces/face1.jpg"/></td>
                <td>Nguyễn Lê Điền</td>
                <td>ngdien1998@gmail.com</td>
                <td>22/11/1998</td>
                <td>No</td>
                <td>0967397916</td>
                <td>Kích hoạt</td>
                <td>
                    <a href="admin-xem-quan-tri-vien.html?email=ngdien1998@gmail.com">Xem</a> |
                    <a href="admin-sua-quan-tri-vien.html?email=ngdien1998@gmail.com">Sửa</a> |
                    <a href="admin-xoa-quan-tri-vien.html?email=ngdien1998@gmail.com">Xóa</a> |
                    <a href="admin-phan-quyen.html?email=ngdien1998@gmail.com">Phân quyền</a>
                </td>
            </tr>
            <tr>
                <td><img src="assests/images/faces/face1.jpg"/></td>
                <td>Nguyễn Lê Điền</td>
                <td>ngdien1998@gmail.com</td>
                <td>22/11/1998</td>
                <td>No</td>
                <td>0967397916</td>
                <td>Kích hoạt</td>
                <td>
                    <a href="admin-xem-quan-tri-vien.html?email=ngdien1998@gmail.com">Xem</a> |
                    <a href="admin-sua-quan-tri-vien.html?email=ngdien1998@gmail.com">Sửa</a> |
                    <a href="admin-xoa-quan-tri-vien.html?email=ngdien1998@gmail.com">Xóa</a> |
                    <a href="admin-phan-quyen.html?email=ngdien1998@gmail.com">Phân quyền</a>
                </td>
            </tr>
            <tr>
                <td><img src="assests/images/faces/face1.jpg"/></td>
                <td>Nguyễn Lê Điền</td>
                <td>ngdien1998@gmail.com</td>
                <td>22/11/1998</td>
                <td>No</td>
                <td>0967397916</td>
                <td>Kích hoạt</td>
                <td>
                    <a href="admin-xem-quan-tri-vien.html?email=ngdien1998@gmail.com">Xem</a> |
                    <a href="admin-sua-quan-tri-vien.html?email=ngdien1998@gmail.com">Sửa</a> |
                    <a href="admin-xoa-quan-tri-vien.html?email=ngdien1998@gmail.com">Xóa</a> |
                    <a href="admin-phan-quyen.html?email=ngdien1998@gmail.com">Phân quyền</a>
                </td>
            </tr>
            </tbody>
        </table>
        <div class="row">
            <nav>
                <ul class="pagination flat pagination-primary">
                    <li class="page-item"><a class="page-link" href="#"><i
                            class="mdi mdi-chevron-left"></i></a></li>
                    <li class="page-item active"><a class="page-link" href="#">1</a></li>
                    <li class="page-item"><a class="page-link" href="#">2</a></li>
                    <li class="page-item"><a class="page-link" href="#">3</a></li>
                    <li class="page-item"><a class="page-link" href="#">4</a></li>
                    <li class="page-item"><a class="page-link" href="#"><i
                            class="mdi mdi-chevron-right"></i></a></li>
                </ul>
            </nav>
        </div>
    </div>
</div>

<jsp:include page="_shared/admin/page-footer.jsp" flush="true" />
<jsp:include page="_shared/admin/end-of-file.jsp" flush="true" />