package com.mjh.cmssm.web;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.mjh.cmssm.domain.Dorepair;
import com.mjh.cmssm.domain.Repairinfo;
import com.mjh.cmssm.domain.RepairinfoExtend;
import com.mjh.cmssm.dto.Msg;
import com.mjh.cmssm.service.IDorepairService;
import com.mjh.cmssm.service.IRepairinfoService;

@Controller
@RequestMapping("/repairinfo")
public class RepairinfoController {
	@Autowired private IRepairinfoService riService;
	@Autowired private IDorepairService drService;
	
	@InitBinder
	public void initBinder(WebDataBinder binder) {
	   SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
	   dateFormat.setLenient(false);
	   binder.registerCustomEditor(Date.class, new CustomDateEditor(dateFormat, false));
	}
	
	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public String list(@RequestParam(value = "pn", defaultValue = "1") Integer pn, Model model) {
		//引入pageHelper分页插件，在查询之前只需要调用，传入页码以及分页每页的大小
        PageHelper.startPage(pn, 4);
        //startPage后面紧跟着这个查询就是一个分页查询
		List<RepairinfoExtend> users = riService.selectAll();
		//连续显示的页数是5页
		PageInfo<RepairinfoExtend> pageInfo = new PageInfo<>(users, 5);
		model.addAttribute("pageInfo", pageInfo);
		return "admin/repairinfolist";
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
            riService.deleteByPrimaryKey(Integer.parseInt(ids));
        } else {
            String[] idArr = ids.split(",");
            for (String idStr : idArr) {
            	riService.deleteByPrimaryKey(Integer.parseInt(idStr));
            }
        }
		return Msg.success();
	}
	
	@ResponseBody
	@RequestMapping(value = "/update/{hid}", method = RequestMethod.PUT)
	public Msg update(Repairinfo house) {
		riService.updateByPrimaryKey(house);
		return Msg.success();
	}
	
	@ResponseBody
    @RequestMapping(value = "/save", method = RequestMethod.POST)
    public Msg save(Repairinfo house) {
        riService.insert(house);
        
        int rid = riService.selectRidByRcode(house.getRcode());
        System.out.println("Rid为"+rid);
        Dorepair dorepair = new Dorepair();
        dorepair.setDid(null);
        dorepair.setDmoney(0);
        dorepair.setDtime(new Date());
        dorepair.setRid(rid);
        dorepair.setSid(102);
        System.out.println(dorepair);
        System.out.println("结果"+drService.insert(dorepair));
        return Msg.success();
    }
}
