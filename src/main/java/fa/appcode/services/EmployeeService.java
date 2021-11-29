/*
 *
 * @author: ChuongHV1
 * @date: Nov 27, 2021
 */

package fa.appcode.services;

import org.springframework.data.domain.Page;

import fa.appcode.web.vo.EmployeeVo;

public interface EmployeeService {

	Page<EmployeeVo> findAllEmployee(int pageIndex, int pageSize);

	Page<EmployeeVo> findAllEmployee(int pageIndex, int pageSize, String dataSearch);

}
