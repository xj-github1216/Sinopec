package com.igeek.dao;

import com.igeek.entity.RepairDetail;

import java.sql.SQLException;
import java.util.List;

public class RepairDetailDao extends BaseDao<RepairDetail> {
    //通过id多表查询（RepairDetail）
    public List<RepairDetail> selectAllByIdForThreeTable() throws SQLException {
        List<RepairDetail> list = this.getBeanList("select r.id 'id',r.faultStyle 'faultStyle'," +
                "r.faultDescribe 'faultDescribe',r.employId 'employId',e.`name` 'employName'," +
                "e.phone 'employPhone',e.stationId 'stationId',s.address 'stationAddress'," +
                "r.repairDate 'repairDate',r.state 'state'" +
                "from repair r,employ e,station s where r.employId=e.employId " +
                "and e.stationId=s.stationId", RepairDetail.class);
        return list;
    }
}
