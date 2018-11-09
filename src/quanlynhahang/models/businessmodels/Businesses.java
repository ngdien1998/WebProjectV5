package quanlynhahang.models.businessmodels;

import java.sql.SQLException;
import java.util.ArrayList;

public interface Businesses<TDataModel> {
    ArrayList<TDataModel> getData() throws SQLException, ClassNotFoundException;
    TDataModel add(Object... agrs);
    TDataModel delete(Object... keys);
    TDataModel modify(Object... args);
    TDataModel get(Object... keys) throws SQLException, ClassNotFoundException;
}
