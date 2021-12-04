/*
 *
 * @author: ChuongHV1
 * @date: Dec 4, 2021
 */

package fa.appcode.web.vo;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class ResponseObject {

	private String status;
	
	private String message;
	
	private Object data;
}
