package com.mjh.cmssm.web;

import java.util.List;

import com.mjh.cmssm.domain.UserExtend;
import com.mjh.cmssm.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.mjh.cmssm.domain.House;
import com.mjh.cmssm.dto.Msg;
import com.mjh.cmssm.service.IHouseService;

@Controller
@RequestMapping("/house")
public class HouseController {
    @Autowired
    private IHouseService houseService;
    @Autowired
    private IUserService userService;

    /*	@ResponseBody
        @RequestMapping(value = "/listwithjson", method = RequestMethod.GET)
        public Msg listWithJson(@RequestParam(value = "pn", defaultValue = "1") Integer pn) {
            //引入pageHelper分页插件，在查询之前只需要调用，传入页码以及分页每页的大小
            PageHelper.startPage(pn, 4);
            //startPage后面紧跟着这个查询就是一个分页查询
            List<House> houses = houseService.selectAll();
            //连续显示的页数是5页
            PageInfo<House> pageInfo = new PageInfo<>(houses, 5);
            model.addAttribute("pageInfo", page);
            return "admin/house";
            return Msg.success().add("pageInfo", pageInfo);
        }*/
    @ResponseBody
    @RequestMapping(value = "/listall", method = RequestMethod.GET)
    public List<House> listall(Model model) {
        List<House> houses = houseService.selectAll();
        model.addAttribute("houses", houses);
        return houses;
    }

    @RequestMapping(value = "/list", method = RequestMethod.GET)
    public String list(@RequestParam(value = "pn", defaultValue = "1") Integer pn, Model model) {
        //引入pageHelper分页插件，在查询之前只需要调用，传入页码以及分页每页的大小
        PageHelper.startPage(pn, 3);
        //startPage后面紧跟着这个查询就是一个分页查询
        List<House> houses = houseService.selectAll();
        //连续显示的页数是5页
        PageInfo<House> pageInfo = new PageInfo<>(houses, 5);
        model.addAttribute("pageInfo", pageInfo);
        return "admin/houselist";
    }

    /**
     * 单个和批量删除
     *
     * @param ids
     * @return
     */
    @ResponseBody
    @RequestMapping(value = "/del/{hid}", method = RequestMethod.DELETE)
    public Msg del(@PathVariable("hid") String ids) {
        System.out.println("被删除（hid）：" + ids);
        List<UserExtend> list = userService.selectAll();
        if (!ids.contains(",")) {
            if (list.stream().anyMatch(userExtend -> userExtend.getHouse().getHid().toString().equals(ids))) {
                return Msg.fail();
            }
            houseService.deleteByPrimaryKey(Integer.parseInt(ids));
        } else {
            String[] idArr = ids.split(",");
            for (String idStr : idArr) {
                if (list.stream().anyMatch(userExtend -> userExtend.getHouse().getHid().toString().equals(idStr))) {
                    return Msg.fail();
                }
                houseService.deleteByPrimaryKey(Integer.parseInt(idStr));
            }
        }
        return Msg.success();
    }

    @ResponseBody
    @RequestMapping(value = "/update/{hid}", method = RequestMethod.PUT)
    public Msg update(House house) {
        System.out.println(house);
        houseService.updateByPrimaryKey(house);
        return Msg.success();
    }

    @ResponseBody
    @RequestMapping(value = "/save", method = RequestMethod.POST)
    public Msg save(House house) {
        System.out.println(house);
        houseService.insert(house);
        return Msg.success();
    }

    /**
     * 校验添加的楼房名字是否重复
     *
     * @param hcode
     * @return
     */
    @ResponseBody
    @RequestMapping(value = "/validateName")
    public Msg validateHcode(@RequestParam("hcode") String hcode) {
        boolean result = houseService.validateHcode(hcode);
        // 返回TRUE，名字可用
        if (result) {
            return Msg.success();
        }
        return Msg.fail();
    }
}
