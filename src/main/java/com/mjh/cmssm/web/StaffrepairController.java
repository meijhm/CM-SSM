package com.mjh.cmssm.web;

import java.util.List;

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
import com.mjh.cmssm.domain.Staffrepair;
import com.mjh.cmssm.dto.Msg;
import com.mjh.cmssm.service.IStaffrepairService;

@Controller
@RequestMapping("/staff")
public class StaffrepairController {
	@Autowired private IStaffrepairService staffrepairService;

	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public String list(@RequestParam(value = "pn", defaultValue = "1") Integer pn, Model model) {
		//引入pageHelper分页插件，在查询之前只需要调用，传入页码以及分页每页的大小
        PageHelper.startPage(pn, 1);
        //startPage后面紧跟着这个查询就是一个分页查询
		List<Staffrepair> users = staffrepairService.selectAll();
		//连续显示的页数是5页
		PageInfo<Staffrepair> pageInfo = new PageInfo<>(users, 5);
		model.addAttribute("pageInfo", pageInfo);
		return "admin/stafflist";
	}
	
	/**
	 * 单个和批量删除
	 * @param ids
	 * @return
	 */
	@ResponseBody
	@RequestMapping(value = "/del/{hid}", method = RequestMethod.DELETE)
	public Msg del(@PathVariable("hid") String ids) {
		System.out.println(ids);
		if (ids.indexOf(",") == -1) {
            staffrepairService.deleteByPrimaryKey(Integer.parseInt(ids));
        } else {
            String[] idArr = ids.split(",");
            for (String idStr : idArr) {
            	staffrepairService.deleteByPrimaryKey(Integer.parseInt(idStr));
            }
        }
		return Msg.success();
	}
	
	@ResponseBody
	@RequestMapping(value = "/update/{hid}", method = RequestMethod.PUT)
	public Msg update(Staffrepair house) {
		staffrepairService.updateByPrimaryKey(house);
		return Msg.success();
	}
	
	@ResponseBody
    @RequestMapping(value = "/save", method = RequestMethod.POST)
    public Msg save(Staffrepair house) {
        staffrepairService.insert(house);
        return Msg.success();
    }
	
	@ResponseBody
    @RequestMapping(value = "/validateName")
    public Msg validateHcode(@RequestParam("scode") String scode) {
        boolean result = staffrepairService.validateHcode(scode);
        // 返回TRUE，业主编号可用
        if (result) {
            return Msg.success();
        }
        return Msg.fail();
    }

}