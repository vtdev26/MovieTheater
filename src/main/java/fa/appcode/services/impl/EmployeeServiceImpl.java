/*
 *
 * @author: ChuongHV1
 * @date: Nov 27, 2021
 */

package fa.appcode.services.impl;

import java.util.Optional;

import javax.transaction.Transactional;

import fa.appcode.common.logging.LogUtils;
import fa.appcode.config.MessageConfig;
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
    public boolean save(Employee employee) {
        try {
            employeeRepository.save(employee);
            return true;
        }
        catch (Exception e){
            return  false;
        }

    }

    @Override
    public Optional<Employee> findById(String id) {
        return employeeRepository.findById(id);
    }

    @Override
    public Employee findEmployeeById(String id){
        return  employeeRepository.findEmployeeByEmployeeId(id);
    }

    @Override
    public  boolean deleteById(String id){
        boolean exists = employeeRepository.existsById(id);
        LogUtils.getLogger().info("Check exits "+ exists);
        if (exists){
            employeeRepository.deleteById(id);
            return true;
        }
        return false;
    }
}
