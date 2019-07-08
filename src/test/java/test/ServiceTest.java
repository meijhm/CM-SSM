package test;

import com.mjh.cmssm.service.IMovingService;
import com.mjh.cmssm.service.IUserService;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import com.mjh.cmssm.service.IHouseService;

public class ServiceTest extends BaseTest {
    @Autowired private IMovingService iMovingService;
    @Autowired private IUserService iUserService;

    @Test public void testHouseAll(){
        System.out.println(iMovingService.selectAll());
    }

    @Test public void testCache(){
        System.out.println("删除动态："+iMovingService.deleteByPrimaryKey(100));
        System.out.println("删除业主："+iUserService.deleteByPrimaryKey(100));
    }
}
