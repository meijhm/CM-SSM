package com.mjh.cmssm.web;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.*;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.mjh.cmssm.domain.Dorepair;
import com.mjh.cmssm.domain.DorepairExtend;
import com.mjh.cmssm.dto.Msg;
import com.mjh.cmssm.service.IDorepairService;
import com.mjh.cmssm.service.ILoginUserService;

@Controller
@RequestMapping("/dorepair")
public class DorepairController {
	@Autowired private IDorepairService drService;
	@Autowired private ILoginUserService luService;

	@InitBinder
	public void initBinder(WebDataBinder binder) {
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
		dateFormat.setLenient(false);
		binder.registerCustomEditor(Date.class, new CustomDateEditor(dateFormat, false));
	}

	@RequestMapping(value = "/listwithuser", method = RequestMethod.GET)
	public String listWithUser(@RequestParam(value = "pn", defaultValue = "1") Integer pn, HttpServletRequest request, Model model) {
		String username = (String) request.getSession().getAttribute("username");
		System.out.println("用户名"+username);
		System.out.println("用户Id"+luService.selectgetUserByName(username).getlId());
		List<DorepairExtend> users = drService.selectAll();
		System.out.println("所有维修单："+users);
		List<DorepairExtend> uList = new ArrayList<DorepairExtend>();
		for (DorepairExtend dorepairExtend : users) {
			System.out.println("遍历Id"+dorepairExtend.getRepairinfo().getUid());
			if(dorepairExtend.getRepairinfo().getUid().equals(luService.selectgetUserByName(username).getlId())) {
				uList.add(dorepairExtend);
			}
		}
		System.out.println("uList在此"+uList);
		//引入pageHelper分页插件，在查询之前只需要调用，传入页码以及分页每页的大小
        PageHelper.startPage(pn, 5);
        //startPage后面紧跟着这个查询就是一个分页查询
		//List<DorepairExtend> users = drService.selectAll();
		//连续显示的页数是5页
		PageInfo<DorepairExtend> pageInfo = new PageInfo<>(uList, 5);
		model.addAttribute("pageInfo", pageInfo);
		return "admin/dorepairlist";
	}

	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public String list(@RequestParam(value = "pn", defaultValue = "1") Integer pn, Model model) {
		//引入pageHelper分页插件，在查询之前只需要调用，传入页码以及分页每页的大小
        PageHelper.startPage(pn, 4);
        //startPage后面紧跟着这个查询就是一个分页查询
		List<DorepairExtend> users = drService.selectAll();
		//连续显示的页数是5页
		PageInfo<DorepairExtend> pageInfo = new PageInfo<>(users, 5);
		model.addAttribute("pageInfo", pageInfo);
		return "admin/dorepairlist";
	}
	
	/**
	 * 单个和批量删除
	 * @param ids
	 * @return
	 */
	@ResponseBody
	@RequestMapping(value = "/del/{did}", method = RequestMethod.DELETE)
	public Msg del(@PathVariable("did") String ids) {
		System.out.println(ids);
		if (ids.indexOf(",") == -1) {
            drService.deleteByPrimaryKey(Integer.parseInt(ids));
        } else {
            String[] idArr = ids.split(",");
            for (String idStr : idArr) {
            	drService.deleteByPrimaryKey(Integer.parseInt(idStr));
            }
        }
		return Msg.success();
	}
	
	@ResponseBody
	@RequestMapping(value = "/update/{did}", method = RequestMethod.PUT)
	public Msg update(Dorepair house) {
		drService.updateByPrimaryKey(house);
		return Msg.success();
	}
	
	@ResponseBody
    @RequestMapping(value = "/save", method = RequestMethod.POST)
    public Msg save(Dorepair house) {
        drService.insert(house);
        return Msg.success();
    }
}
