package com.korea.travel.purchase;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository("purchasedao")
public class PurchaseDAO {

	@Autowired
	SqlSession session; 
	
	// <1> 데이터 저장
	public int insertpurchase(PurchaseDTO dto) {
		int insertrow = session.insert("insertpurchase", dto); // execute an insert statement with the given parameter object
		return insertrow;
	}
}
