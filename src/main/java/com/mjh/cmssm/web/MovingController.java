package com.mjh.cmssm.web;

import java.text.SimpleDateFormat;
import java.util.*;
import java.util.stream.Collectors;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.*;

import com.mjh.cmssm.dto.Msg;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.mjh.cmssm.domain.Moving;
import com.mjh.cmssm.service.IMovingService;

@Controller
@RequestMapping("/moving")
public class MovingController {
	@Autowired private IMovingService iMovingService;
	
	@InitBinder
	public void initBinder(WebDataBinder binder) {
	   SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
	   dateFormat.setLenient(false);
	   binder.registerCustomEditor(Date.class, new CustomDateEditor(dateFormat, false));
	}

	@RequestMapping(value = "/list4", method = RequestMethod.GET)
	public List<Moving> list4Reverse() {
		List<Moving> list = new ArrayList<>();
		List<Moving> movings = iMovingService.selectAll();
		Collections.reverse(movings);
		if (movings.size() > 4) {
			list.add(movings.get(0));
			list.add(movings.get(1));
			list.add(movings.get(2));
			list.add(movings.get(3));
		} else {
			list.addAll(movings);
		}
		return list;
	}

	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public String list(@RequestParam(value = "pn", defaultValue = "1") Integer pn, Model model) {
		PageHelper.startPage(pn, 4);
		List<Moving> movings = iMovingService.selectAll();
		PageInfo<Moving> pageInfo = new PageInfo<>(movings, 5);
		model.addAttribute("pageInfo", pageInfo);
		return "admin/movinglist";
	}

	@RequestMapping(value = "/listapp", method = RequestMethod.GET)
	public String listapp(@RequestParam(value = "pn", defaultValue = "1") Integer pn, Model model) {
		PageHelper.startPage(pn, 4);
		List<Moving> movings = iMovingService.selectAll();
		PageInfo<Moving> pageInfo = new PageInfo<>(movings, 5);
		model.addAttribute("pageInfo", pageInfo);
		return "app/movinglist";
	}
	
	@ResponseBody
	@RequestMapping(value = "/insert", method = RequestMethod.POST)
	public Msg insert(Moving moving, HttpServletRequest request) {
		System.out.println("表单数据："+moving);
		String username = (String) request.getSession().getAttribute("username");
		System.out.println("用户名："+username);
		moving.setlName("用户 " + username);
		iMovingService.insert(moving);
		return Msg.success();
	}

	@ResponseBody
	@RequestMapping(value = "/insertA", method = RequestMethod.POST)
	public Msg insertA(Moving moving, HttpServletRequest request) {
		System.out.println("表单数据："+moving);
		String adminname = (String) request.getSession().getAttribute("adminname");
		System.out.println("管理员名："+adminname);
		moving.setlName("管理员 " + adminname);;
		iMovingService.insert(moving);
		return Msg.success();
	}

	/**
	 * 单个和批量删除
	 *
	 * @param ids
	 * @return
	 */
	@ResponseBody
	@RequestMapping(value = "/del/{mid}", method = RequestMethod.DELETE)
	public Msg del(@PathVariable("mid") String ids) {
		System.out.println("被删除（mid）：" + ids);
		List<Moving> list = iMovingService.selectAll();
		if (!ids.contains(",")) {
			iMovingService.deleteByPrimaryKey(Integer.parseInt(ids));
		} else {
			String[] idArr = ids.split(",");
			for (String idStr : idArr) {
				iMovingService.deleteByPrimaryKey(Integer.parseInt(idStr));
			}
		}
		return Msg.success();
	}
}
