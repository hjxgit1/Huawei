package com.cssl.service;
import java.util.List;
import com.cssl.entity.Address;

/**
 * 服务层接口
 * @author Administrator
 *
 */
public interface AddressService {

	/**
	 * 返回全部列表
	 * @return
	 */
	public List<Address> findAll();
	
	/**
	 * 增加
	*/
	public void add(Address address);
	
	
	/**
	 * 修改
	 */
	public void update(Address address);
	

	/**
	 * 根据ID获取实体
	 * @param id
	 * @return
	 */
	public Address findOne(Long id);
	
	
	/**
	 * 批量删除
	 * @param ids
	 */
	public void delete(Long[] ids);


	/**
	 * 通过用户名来获取地址列表
	 * @param userName
	 * @return
	 */
	public List<Address> findListByUserName(String userName);
	
}
