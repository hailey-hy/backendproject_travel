package com.korea.travel.purchase;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

@Service("purchaseservice")
public class PurchaseServiceImpl implements PurchaseService{

	@Autowired
	@Qualifier("purchasedao")
	PurchaseDAO dao; 
	
	@Override
	public int insertpurchase(PurchaseDTO dto) {
		return dao.insertpurchase(dto);
	}

}
