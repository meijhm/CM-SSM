package test;


import org.junit.Test;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;

import com.mjh.cmssm.dao.HouseMapper;
import com.mjh.cmssm.dao.LoginUserMapper;
import com.mjh.cmssm.domain.House;

import java.util.List;

public class DaoTest extends BaseTest {
    private Logger logger = LoggerFactory.getLogger(DaoTest.class);
    @Autowired private HouseMapper houseMapper;
    @Autowired private LoginUserMapper luMapper;

    @Test
    public void testHouseAll(){
        List<House> houses = houseMapper.selectAll();
        logger.info("房子：{}",houses);
    }
    
    
    @Test public void testGetUserByName() {
    	logger.info("用户{}",luMapper.selectgetUserByName("小诸葛"));
    }
}
