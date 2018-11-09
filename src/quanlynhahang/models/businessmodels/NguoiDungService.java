package quanlynhahang.models.businessmodels;

import quanlynhahang.models.datamodels.NguoiDung;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

public class NguoiDungService extends ConnectDatabase implements Businesses<NguoiDung> {

    @Override
    public ArrayList<NguoiDung> getData() throws SQLException, ClassNotFoundException {
        ArrayList<NguoiDung> nguoiDungs = new ArrayList<>();
        openConnection();

        String sql = "EXEC LayNguoiDung";
        PreparedStatement statement = connection.prepareStatement(sql);
        statement.setEscapeProcessing(true);
        statement.setQueryTimeout(90);

        ResultSet res = statement.executeQuery();
        while (res.next()) {
            NguoiDung nguoiDung = new NguoiDung();
            nguoiDung.setTen(res.getString(3));
            nguoiDung.setMatKhau(res.getString(4));
            nguoiDung.setNgaySinh(res.getDate(5));
            nguoiDung.setNu(res.getBoolean(6));
            nguoiDung.setEmail(res.getString(1));
            nguoiDung.setHoDem(res.getString(2));
            nguoiDung.setAvatar(res.getString(7));
            nguoiDung.setDienThoai(res.getString(8));
            nguoiDung.setDiaChi(res.getString(9));

            nguoiDungs.add(nguoiDung);
        }

        closeConnection();
        return nguoiDungs;
    }

    @Override
    public NguoiDung add(Object... agrs) {
        return null;
    }

    @Override
    public NguoiDung delete(Object... keys) {
        return null;
    }

    @Override
    public NguoiDung modify(Object... args) {
        return null;
    }

    @Override
    public NguoiDung get(Object... keys) throws SQLException, ClassNotFoundException {
        if (keys.length <= 0) {
            return null;
        }
        openConnection();

        String sql = "EXEC LayMotNguoiDung ?";
        PreparedStatement statement = connection.prepareStatement(sql);
        statement.setEscapeProcessing(true);
        statement.setQueryTimeout(90);
        statement.setString(1, keys[0].toString());

        ResultSet res = statement.executeQuery();
        NguoiDung nguoiDung = null;
        if (res.next()) {
            nguoiDung = new NguoiDung();
            nguoiDung.setTen(res.getString(3));
            nguoiDung.setMatKhau(res.getString(4));
            nguoiDung.setNgaySinh(res.getDate(5));
            nguoiDung.setNu(res.getBoolean(6));
            nguoiDung.setEmail(res.getString(1));
            nguoiDung.setHoDem(res.getString(2));
            nguoiDung.setAvatar(res.getString(7));
            nguoiDung.setDienThoai(res.getString(8));
            nguoiDung.setDiaChi(res.getString(9));
        }

        closeConnection();
        return nguoiDung;
    }
}