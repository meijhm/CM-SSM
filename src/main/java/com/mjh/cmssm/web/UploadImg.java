package com.mjh.cmssm.web;

import java.io.File;
import java.io.IOException;
import java.util.Iterator;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;

import com.mjh.cmssm.domain.Admin;
import com.mjh.cmssm.service.IAdminService;
import com.mjh.cmssm.utils.IdUtil;

@RequestMapping("/up")
@Controller
public class UploadImg {
	@Autowired private IAdminService iAdminService;
	
	@RequestMapping(value = "/doupl", method = RequestMethod.POST)
	public String doUpload(String aname, HttpServletRequest request,Model model) {
		CommonsMultipartResolver multipartResolver = new CommonsMultipartResolver(
				request.getSession().getServletContext());
		String fileName = null;
		String extName = null;
		//检测头字段是否包含multipart/form-data
		System.out.println("检查");
		if (multipartResolver.isMultipart(request)) {
			System.out.println("包含头");
			MultipartHttpServletRequest multiRequest = (MultipartHttpServletRequest) request;
			Iterator<String> iter = multiRequest.getFileNames();
			// 遍历迭代器
			while (iter.hasNext()) {
				// 获取文件
				MultipartFile file = multiRequest.getFile((String) iter.next());
				if (file != null) {
					System.out.println("文件不为空");
					//fileName = UUID.randomUUID().toString();
					fileName = IdUtil.genImageName();
					System.out.println(fileName);
					String oriName = file.getOriginalFilename();
					extName = oriName.substring(oriName.lastIndexOf("."));
					// 文件的名字
					String path = "C:\\Users\\meijianhua\\eclipse-workspace\\CM-SSM\\src\\main\\webapp\\static\\images\\" + fileName + extName;
					// 上传路径
					File localFile = new File(path);
					try {
						file.transferTo(localFile);
					} catch (IllegalStateException | IOException e) {
						e.printStackTrace();
					}
				}

			}

		}
		model.addAttribute("fname", fileName+extName);
		Admin admin = new Admin();
		System.out.println(aname+"==="+fileName+extName);
		Admin admin2 = iAdminService.getAdminByName("admin");
		System.out.println("市场:"+admin2.getAid());
		admin.setAname(aname);
		admin.setAid(admin2.getAid());
		admin.setApwd(admin2.getApwd());
		admin.setaImg(fileName+extName);
		System.out.println("结果"+iAdminService.updateByPrimaryKey(admin));
		return "admin/myworld";
	}
	
	@RequestMapping("/dologin")
	public String doLogin(@RequestParam(value="name",required=true)String uname, Model model) {
//		System.out.println("2er"+uname);
//		model.addAttribute("username", uname);	
		return "redirect:/index.jsp";
	}
}
