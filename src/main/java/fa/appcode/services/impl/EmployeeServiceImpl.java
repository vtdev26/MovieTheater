/*
 *
 * @author: ChuongHV1
 * @date: Nov 27, 2021
 */

package fa.appcode.services.impl;

import java.util.Optional;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import fa.appcode.repositories.EmployeeRepository;
import fa.appcode.services.EmployeeService;
import fa.appcode.web.entities.Employee;
import fa.appcode.web.vo.EmployeeVo;

@Service("employeeService")
@Transactional
public class EmployeeServiceImpl implements EmployeeService {

	@Autowired
	private EmployeeRepository employeeRepository;

	@Override
	public Page<EmployeeVo> findAllEmployee(int pageIndex, int pageSize) {
		Pageable pageable = PageRequest.of(pageIndex, pageSize);
		return employeeRepository.findAllEmployee(pageable);
	}

	@Override
	public Page<EmployeeVo> findAllEmployee(int pageIndex, int pageSize, String dataSearch) {
		Pageable pageable = PageRequest.of(pageIndex, pageSize);
		return employeeRepository.findAllEmployee(dataSearch, pageable);
	}

	@Override
	public Employee save(Employee employee) {
		return employeeRepository.save(employee);
	}
	
	@Override
	public Optional<Employee> findById(String id) {
		return employeeRepository.findById(id);
	}
}
