package com.cssl.service.impl;
import java.util.List;

import com.cssl.dao.AddressMapper;
import com.cssl.service.AddressService;
import org.springframework.beans.factory.annotation.Autowired;
import com.cssl.entity.Address;
import com.cssl.entity.AddressExample;
import com.cssl.entity.AddressExample.Criteria;

import org.springframework.stereotype.Service;

/**
 * 服务实现层
 * @author Administrator
 *
 */
@Service
public class AddressServiceImpl implements AddressService {

	@Autowired
	private AddressMapper addressMapper;
	
	/**
	 * 查询全部
	 */
	@Override
	public List<Address> findAll() {
		return addressMapper.selectByExample(null);
	}

	/**
	 * 增加
	 */
	@Override
	public void add(Address address) {
		addressMapper.insertSelective(address);
	}

	
	/**
	 * 修改
	 */
	@Override
	public void update(Address address){
		addressMapper.updateByPrimaryKey(address);
	}	
	
	/**
	 * 根据ID获取实体
	 * @param id
	 * @return
	 */
	@Override
	public Address findOne(Long id){
		return addressMapper.selectByPrimaryKey(id);
	}

	/**
	 * 批量删除
	 */
	@Override
	public void delete(Long[] ids) {
		for(Long id:ids){
			addressMapper.deleteByPrimaryKey(id);
		}		
	}


	@Override
	public List<Address> findListByUserName(String userName) {
		/*System.out.println(userName+"))))))))))))))");
		AddressExample example=new AddressExample();
		Criteria criteria = example.createCriteria();
		criteria.andAddressEqualTo(userName);
		System.out.println("qqq"+example+"www");
		List<Address> list= addressMapper.selectByExample(example);
		System.out.println(list+"}}}}}}}}}}}}}}");*/
		return addressMapper.selectByUserName(userName);
	}
	
}
