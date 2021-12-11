package fa.appcode.web.controller;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.ObjectWriter;
import fa.appcode.common.logging.LogUtils;
import fa.appcode.config.MessageConfig;
import fa.appcode.services.AccountService;
import fa.appcode.services.EmployeeService;
import fa.appcode.web.entities.Account;
import fa.appcode.web.entities.Employee;
import fa.appcode.web.vo.EmployeeVo;
import fa.appcode.web.vo.ResponseObject;
import org.junit.jupiter.api.Test;
import org.mockito.Mockito;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.web.servlet.AutoConfigureMockMvc;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.boot.test.mock.mockito.MockBean;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageImpl;
import org.springframework.http.HttpStatus;
import org.springframework.mock.web.MockMultipartFile;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.request.MockMvcRequestBuilders;
import org.springframework.test.web.servlet.result.MockMvcResultMatchers;
import org.springframework.util.StringUtils;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Objects;

import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.jsonPath;

@SpringBootTest
@AutoConfigureMockMvc
class EmployeeControllerTest {

    @Autowired
    private MessageConfig messageConfig;

    @MockBean
    private EmployeeService employeeService;

    @MockBean
    private AccountService accountService;

    @Autowired
    private MockMvc mockMvc;

    @Test
    void showListEmployee() throws Exception {
        final int pageIndex = 1;
        final int pageSize = 5;
        final String dataSearch = "";

        SimpleDateFormat DateFor = new SimpleDateFormat("dd/MM/yyyy");
        Date date = new Date();
        try {
            date = DateFor.parse("08/07/2021");
        } catch (ParseException e) {
            LogUtils.getLogger().info("Convert date fail !!!");
        }
        List<EmployeeVo> employeeVos = new ArrayList<>();
        employeeVos.add(new EmployeeVo("G3_0000001", "G3_0000001", "ha noi", date, "chuong@gmail.com", "hoang van chuong", "M", "123456", "image", "123", "0983012606", date, 1, "chuong1"));
        employeeVos.add(new EmployeeVo("G3_0000002", "G3_0000002", "nam dinh", date, "kien@gmail.com", "hoang van kien", "M", "123456", "image", "123", "0983012606", date, 1, "chuong2"));
        employeeVos.add(new EmployeeVo("G3_0000003", "G3_0000003", "giao thuy", date, "thang@gmail.com", "hoang van thang", "M", "123456", "image", "123", "0983012606", date, 1, "chuong3"));
        employeeVos.add(new EmployeeVo("G3_0000004", "G3_0000004", "quat lam", date, "thanh@gmail.com", "hoang van thanh", "M", "123456", "image", "123", "0983012606", date, 1, "chuong4"));
        employeeVos.add(new EmployeeVo("G3_0000005", "G3_0000005", "ha noi", date, "truong@gmail.com", "hoang van truong", "M", "123456", "image", "123", "0983012606", date, 1, "chuong5"));
        Page<EmployeeVo> page = new PageImpl<>(employeeVos);

        Mockito.when(employeeService.findAllEmployee(0, pageSize)).thenReturn(page);
        mockMvc.perform(MockMvcRequestBuilders.get("/admin/employee/list-employee"))
                .andExpect(MockMvcResultMatchers.view().name("employee/list-employee"))
                .andExpect(MockMvcResultMatchers.model().attribute("employeeVos", employeeVos))
                .andExpect(MockMvcResultMatchers.model().attribute("numOfPages", page.getTotalPages()))
                .andExpect(MockMvcResultMatchers.model().attribute("pageIndex", pageIndex));

    }

    @Test
    void showListEmployeeSearch() throws Exception {
        final Integer pageIndex = 1;
        final Integer pageSize = 5;
        final String dataSearch = "";

        SimpleDateFormat DateFor = new SimpleDateFormat("dd/MM/yyyy");
        Date date = new Date();
        try {
            date = DateFor.parse("08/07/2021");
        } catch (ParseException e) {
            LogUtils.getLogger().info("Convert date fail !!!");
        }
        List<EmployeeVo> employeeVos = new ArrayList<>();
        employeeVos.add(new EmployeeVo("G3_0000001", "G3_0000001", "ha noi", date, "chuong@gmail.com", "hoang van chuong", "M", "123456", "image", "123", "0983012606", date, 1, "chuong1"));
        employeeVos.add(new EmployeeVo("G3_0000002", "G3_0000002", "nam dinh", date, "kien@gmail.com", "hoang van kien", "M", "123456", "image", "123", "0983012606", date, 1, "chuong2"));
        employeeVos.add(new EmployeeVo("G3_0000003", "G3_0000003", "giao thuy", date, "thang@gmail.com", "hoang van thang", "M", "123456", "image", "123", "0983012606", date, 1, "chuong3"));
        employeeVos.add(new EmployeeVo("G3_0000004", "G3_0000004", "quat lam", date, "thanh@gmail.com", "hoang van thanh", "M", "123456", "image", "123", "0983012606", date, 1, "chuong4"));
        employeeVos.add(new EmployeeVo("G3_0000005", "G3_0000005", "ha noi", date, "truong@gmail.com", "hoang van truong", "M", "123456", "image", "123", "0983012606", date, 1, "chuong5"));
        Page<EmployeeVo> page = new PageImpl<>(employeeVos);

        Mockito.when(employeeService.findAllEmployee(pageIndex - 1, pageSize, dataSearch)).thenReturn(page);

        mockMvc.perform(MockMvcRequestBuilders.get("/admin/employee/list-employee/filter").param("pageIndex", String.valueOf(pageIndex)).param("pageSize", String.valueOf(pageSize)))
                .andExpect(MockMvcResultMatchers.view().name("employee/table-employee"))
                .andExpect(MockMvcResultMatchers.model().attribute("employeeVos", employeeVos))
                .andExpect(MockMvcResultMatchers.model().attribute("numOfPages", page.getTotalPages()))
                .andExpect(MockMvcResultMatchers.model().attribute("pageIndex", pageIndex));
    }


    /*
     *  Test save employee with userName exits
     *  Case 1
     * */
    @Test
    void saveEmployee() throws Exception {
        MockMultipartFile file = new MockMultipartFile("file", "test.txt",
                "text/plain", "Spring Framework".getBytes());
        final String userName = "chuong";
        final String password = "123";
        final String fullName = "hoang van chuong";
        final String gender = "M";
        final String identityCard = "123456";
        final String email = "chuong@gmail.com";
        final String address = "nam dinh";
        final String phoneNumber = "11111";
        ResponseObject responseObject = new ResponseObject(messageConfig.getStatusAddAccountExists(),
                messageConfig.getMessageAddAccountExists(),
                "");
        ObjectWriter ow = new ObjectMapper().writer().withDefaultPrettyPrinter();
        String jsonExpect = ow.writeValueAsString(responseObject);

        SimpleDateFormat DateFor = new SimpleDateFormat("dd/MM/yyyy");
        Date date = new Date();
        try {
            date = DateFor.parse("08/07/2021");
        } catch (ParseException e) {
            LogUtils.getLogger().info("Convert date fail !!!");
        }
        List<Account> accounts = new ArrayList<>();
        accounts.add(new Account("G3_00000001", "hanoi", date, "chuong1@gmail.com", "chuonghoang", "M", "1234561", "image", "123", "0983012606", date, 1, "chuong"));
        accounts.add(new Account("G3_00000002", "hanoi", date, "chuong2@gmail.com", "chuonghoang", "M", "1234561", "image", "123", "0983012606", date, 1, "kien"));
        accounts.add(new Account("G3_00000003", "hanoi", date, "chuong3@gmail.com", "chuonghoang", "M", "1234561", "image", "123", "0983012606", date, 1, "thang"));

        Mockito.when(accountService.findAccountByUserName(userName)).thenReturn(accounts.get(0));

        mockMvc.perform(MockMvcRequestBuilders.post("/admin/employee/save")
                        .param("file", String.valueOf(file))
                        .param("userName", userName)
                        .param("password", password)
                        .param("fullName", fullName)
                        .param("gender", gender)
                        .param("identityCard", identityCard)
                        .param("email", email)
                        .param("address", address)
                        .param("phoneNumber", phoneNumber))
                .andExpect(MockMvcResultMatchers.status().is(HttpStatus.BAD_REQUEST.value()))
                .andExpect(MockMvcResultMatchers.content().json(jsonExpect));

    }


    /*
     *  Test save employee with data invalid
     *  Case 2
     * */
    @Test
    void saveEmployee2() throws Exception {
        MockMultipartFile file = new MockMultipartFile("file", "test.txt",
                "text/plain", "Spring Framework".getBytes());
        String userName = "chuong";
        String password = "123";
        String fullName = "hoang van chuong";
        String gender = "M";
        String identityCard = "123456";
        String email = "chuong@gmail.com";
        String address = "nam dinh";

        SimpleDateFormat DateFor = new SimpleDateFormat("dd/MM/yyyy");
        Date date = new Date();
        try {
            date = DateFor.parse("08/07/2021");
        } catch (ParseException e) {
            LogUtils.getLogger().info("Convert date fail !!!");
        }
        List<Account> accounts = new ArrayList<>();
        accounts.add(new Account("G3_00000001", "hanoi", date, "chuong1@gmail.com", "chuonghoang", "M", "1234561", "image", "123", "0983012606", date, 1, "chuong"));
        accounts.add(new Account("G3_00000002", "hanoi", date, "chuong2@gmail.com", "chuonghoang", "M", "1234561", "image", "123", "0983012606", date, 1, "kien"));
        accounts.add(new Account("G3_00000003", "hanoi", date, "chuong3@gmail.com", "chuonghoang", "M", "1234561", "image", "123", "0983012606", date, 1, "thang"));

        // ResponseEntity responseEntity =new ResponseEntity(HttpStatus.BAD_REQUEST);
        Mockito.when(accountService.findAccountByUserName(userName)).thenReturn(accounts.get(0));

        mockMvc.perform(MockMvcRequestBuilders.post("/admin/employee/save")
                        .param("file", String.valueOf(file))
//                        .param("userName", userName)
                        .param("password", password)
                        .param("fullName", fullName)
                        .param("gender", gender)
                        .param("identityCard", identityCard)
                        .param("email", email)
                        .param("address", address))
//                        .param("phoneNumber", "11111"))
                .andExpect(MockMvcResultMatchers.status().is(HttpStatus.BAD_REQUEST.value()))
                .andExpect(jsonPath("$.message").value(messageConfig.getMessageAddDataInvalid()));

    }

    /*
     *  Test save employee
     *  Case 3 normal case
     * */
    @Test
    void saveEmployee3() throws Exception {
        MockMultipartFile file = new MockMultipartFile("file", "test.txt",
                "text/plain", "Spring Framework".getBytes());
        final String userName = "chuong123";
        final String password = "123";
        final String fullName = "hoang van chuong";
        final String gender = "M";
        final String identityCard = "123456";
        final String email = "chuong@gmail.com";
        final String address = "nam dinh";
        final String phoneNumber = "0983012606";

        SimpleDateFormat DateFor = new SimpleDateFormat("dd/MM/yyyy");
        Date date = new Date();
        try {
            date = DateFor.parse("08/07/2021");
        } catch (ParseException e) {
            LogUtils.getLogger().info("Convert date fail !!!");
        }
        List<Account> accounts = new ArrayList<>();
        accounts.add(new Account("G3_00000001", "hanoi", date, "chuong1@gmail.com", "chuonghoang", "M", "1234561", "image", "123", "0983012606", date, 1, "chuong"));
        accounts.add(new Account("G3_00000002", "hanoi", date, "chuong2@gmail.com", "chuonghoang", "M", "1234561", "image", "123", "0983012606", date, 1, "kien"));
        accounts.add(new Account("G3_00000003", "hanoi", date, "chuong3@gmail.com", "chuonghoang", "M", "1234561", "image", "123", "0983012606", date, 1, "thang"));

        Mockito.when(accountService.findAccountByUserName(userName)).thenReturn(null);

        Account account = new Account(null, address, date, email, fullName, gender, identityCard, null, password, phoneNumber, null, 1, userName);
        Employee employee = new Employee(null, account);
        Mockito.when(employeeService.save(employee)).thenReturn(false);

        mockMvc.perform(MockMvcRequestBuilders.post("/admin/employee/save")
                        .param("file", String.valueOf(file))
                        .param("employeeId", "G3_0000009")
                        .param("accountId", "G3_0000009")
                        .param("userName", userName)
                        .param("password", password)
                        .param("fullName", fullName)
                        .param("gender", gender)
                        .param("identityCard", identityCard)
                        .param("email", email)
                        .param("address", address)
                        .param("phoneNumber", phoneNumber))
                .andExpect(MockMvcResultMatchers.status().is(HttpStatus.INTERNAL_SERVER_ERROR.value()))
                .andExpect(jsonPath("$.message").value(messageConfig.getMessageAddServerError()));
    }


    /*
     *  Test save employee
     *  Case 4 normal case
     * */
    @Test
    void saveEmployee4() throws Exception {
        MockMultipartFile file = new MockMultipartFile("file", "test.txt",
                "text/plain", "Spring Framework".getBytes());
        final String accountId = "G3_0000009";
        final String employeeId = "G3_0000009";
        final String userName = "chuong123";
        final String password = "123";
        final String fullName = "hoang van chuong";
        final String gender = "M";
        final String identityCard = "123456";
        final String email = "chuong@gmail.com";
        final String address = "nam dinh";
        final String phoneNumber = "0983012606";
        BCryptPasswordEncoder bCryptPasswordEncoder = new BCryptPasswordEncoder();

        SimpleDateFormat DateFor = new SimpleDateFormat("dd/MM/yyyy");
        Date date = new Date();
        try {
            date = DateFor.parse("08/07/2010");
        } catch (ParseException e) {
            LogUtils.getLogger().info("Convert date fail !!!");
        }
        Mockito.when(accountService.findAccountByUserName(userName)).thenReturn(null);
        String fileName = StringUtils.cleanPath(Objects.requireNonNull(file.getOriginalFilename()));
        Account account = new Account(accountId, address, null, email, fullName, gender, identityCard, null, bCryptPasswordEncoder.encode(password), phoneNumber, new Date(), 1, userName);
        Employee employee = new Employee(employeeId, account);
        Mockito.when(employeeService.save(employee)).thenReturn(true);
        mockMvc.perform(MockMvcRequestBuilders.post("/admin/employee/save")
                        .param("file", String.valueOf(file))
                        .param("employeeId", employeeId)
                        .param("accountId", accountId)
                        .param("userName", userName)
                        .param("password", password)
                        .param("fullName", fullName)
                        .param("gender", gender)
                        .param("identityCard", identityCard)
                        .param("email", email)
                        .param("address", address)
                        .param("phoneNumber", phoneNumber))
                .andExpect(MockMvcResultMatchers.status().is(HttpStatus.OK.value()))
                .andExpect(jsonPath("$.message").value(messageConfig.getMessageAddSuccess()));
    }

    @Test
    void delete() throws Exception {
        final String id = "G3_T1uFFlz";
        Mockito.when(employeeService.deleteById(id)).thenReturn(true);
        mockMvc.perform(MockMvcRequestBuilders.delete("/admin/employee/"+id))
                .andExpect(MockMvcResultMatchers.status().is(HttpStatus.OK.value()))
                .andExpect(jsonPath("$.message").value(messageConfig.getMessageDeleteSuccess()));

    }


    @Test
    void delete2() throws Exception {
        final String id = "G3_T1uFFlz";
        Mockito.when(employeeService.deleteById(id)).thenReturn(false);
        mockMvc.perform(MockMvcRequestBuilders.delete("/admin/employee/"+id))
                .andExpect(MockMvcResultMatchers.status().is(HttpStatus.NOT_IMPLEMENTED.value()))
                .andExpect(jsonPath("$.message").value(messageConfig.getMessageDeleteFail()));

    }





}