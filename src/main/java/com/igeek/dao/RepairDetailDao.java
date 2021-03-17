package com.igeek.dao;

import com.igeek.entity.RepairDetail;

import java.sql.SQLException;
import java.util.List;

public class RepairDetailDao extends BaseDao<RepairDetail> {
    //通过id多表查询（RepairDetail）
    public List<RepairDetail> selectAllByIdForThreeTable() throws SQLException {
        List<RepairDetail> list = this.getBeanList("SELECT z.id 'id',z.faultStyle 'faultStyle',\n" +
                "z.faultDescribe 'faultDescribe',z.employId 'employId',\n" +
                "z.`employName` 'employName',z.employPhone 'employPhone',\n" +
                "z.stationId 'stationId',z.repairDate 'repairDate',\n" +
                "z.state 'state',z.servicemanId 'servicemanId',z.servicemanName 'servicemanName',\n" +
                "z.servicemanPhone 'servicemanPhone',a.address 'stationAddress'\n" +
                "from (\n" +
                "\t\tselect r.id 'id',r.faultStyle 'faultStyle',\n" +
                "\t\tr.faultDescribe 'faultDescribe',r.employId 'employId',\n" +
                "\t\te.`name` 'employName',e.phone 'employPhone',\n" +
                "\t\te.stationId 'stationId',r.repairDate 'repairDate',r.state 'state',\n" +
                "\t\ts.servicemanId 'servicemanId',\n" +
                "\t\ts.name 'servicemanName',s.phone 'servicemanPhone'\n" +
                "\t\tfrom repair r\n" +
                "\t\tLEFT JOIN employ e on r.employId=e.employId\n" +
                "\t\tLEFT JOIN serviceman s on r.servicemanId=s.servicemanId\n" +
                ") z\n" +
                "LEFT JOIN station a\n" +
                "on z.stationId=a.stationId;", RepairDetail.class);
        return list;
    }
}
