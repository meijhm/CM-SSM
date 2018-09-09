package test;

import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import com.mjh.cmssm.service.IHouseService;

public class ServiceTest extends BaseTest {
    @Autowired private IHouseService iHouseService;

    @Test public void testHouseAll(){
        System.out.println(iHouseService.selectAll());
    }

    @Test public void testCache(){
        System.out.println("第一次"+iHouseService.selectAll());
        System.out.println("第二次"+iHouseService.selectAll());
    }
}
