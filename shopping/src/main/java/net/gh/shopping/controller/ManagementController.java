package net.gh.shopping.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import net.gh.shopping.util.FileUtil;
import net.gh.shopping.validator.ProductValidator;
import net.gh.shoppingBack.dao.CategoryDAO;
import net.gh.shoppingBack.dao.ProductDAO;
import net.gh.shoppingBack.dto.Category;
import net.gh.shoppingBack.dto.Product;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/manage")
public class ManagementController {

	private static final Logger logger = LoggerFactory.getLogger(ManagementController.class);

	@Autowired
	private ProductDAO productDAO;

	@Autowired
	private CategoryDAO categoryDAO;

	@RequestMapping("/training")
	public ModelAndView training(@RequestParam(name = "success", required = false) String success) {

		ModelAndView mv = new ModelAndView("page1");
		mv.addObject("title", "Training Management");
		mv.addObject("userClickAddTraining", true);

		Product nProduct = new Product();
		nProduct.setSupplierId(1);
		nProduct.setActive(true);
		mv.addObject("status", "new");
		mv.addObject("product", nProduct);

		if (success != null) {
			if (success.equals("product")) {
				mv.addObject("message", "Product submitted successfully!");
			} else if (success.equals("category")) {
				mv.addObject("message", "Category submitted successfully!");
			} else {
				mv.addObject("message", "Fileds!");
			}
		}
		return mv;
	}

	@RequestMapping("/editProduct")
	public ModelAndView EditProduct(@RequestParam(name = "success", required = false) String success) {
		ModelAndView mv = new ModelAndView("page1");
		mv.addObject("title", "Training Management");
		mv.addObject("userClickAddTraining", true);

		Product nProduct = new Product();
		nProduct.setSupplierId(1);
		nProduct.setActive(true);

		mv.addObject("product", nProduct);

		if (success != null) {
			if (success.equals("product")) {
				mv.addObject("message", "Product submitted successfully!");
			} else if (success.equals("category")) {
				mv.addObject("message", "Category submitted successfully!");
			} else {
				mv.addObject("message", "Fileds!");
			}
		}
		return mv;
	}

	@RequestMapping("/product")
	public ModelAndView manageProduct(@RequestParam(name = "success", required = false) String success) {

		ModelAndView mv = new ModelAndView("page1");
		mv.addObject("title", "Product Management");
		mv.addObject("userClickManageProduct", true);

		Product nProduct = new Product();
		nProduct.setSupplierId(1);
		nProduct.setActive(true);

		mv.addObject("product", nProduct);

		mv.addObject("products", productDAO.list());

		if (success != null) {
			if (success.equals("product")) {
				mv.addObject("message", "Product submitted successfully!");
			} else if (success.equals("category")) {
				mv.addObject("message", "Category submitted successfully!");
			}
		}
		return mv;
	}

	@RequestMapping("/{id}/training")
	public ModelAndView manageProductEdit(@PathVariable int id) {

		ModelAndView mv = new ModelAndView("page1");
		mv.addObject("title", "Training Management");
		mv.addObject("userClickAddTraining", true);

		// Product nProduct = new Product();
		mv.addObject("status", "edit");
		mv.addObject("product", productDAO.get(id));
		mv.addObject("products", productDAO.list());

		return mv;

	}

	@RequestMapping(value = "/product", method = RequestMethod.POST)
	public String managePostProduct(@Valid @ModelAttribute("product") Product mProduct, BindingResult results,
			Model model, HttpServletRequest request) {

		System.out.println("1");
		if (mProduct.getId() == 0) {
			System.out.println("12");
			new ProductValidator().validate(mProduct, results);
		} else {
			System.out.println("13");
			if (!mProduct.getFile().getOriginalFilename().equals("")) {
				System.out.println("14");
				new ProductValidator().validate(mProduct, results);
			}
		}
		// System.out.println(results.getAllErrors().get(0).getDefaultMessage());
		if (results.hasErrors()) {
			model.addAttribute("errorMessage", "Please fill the Mandatory fields !!");
			model.addAttribute("userClickAddTraining", true);
			return "page1";
		}

		if (mProduct.getId() == 0) {
			productDAO.add(mProduct);
		} else {
			productDAO.update(mProduct);
		}

		// upload the file
		if (!mProduct.getFile().getOriginalFilename().equals("")) {
			FileUtil.uploadFile(request, mProduct.getFile(), mProduct.getCode());
		}

		return "redirect:/manage/training?success=product";
	}

	@RequestMapping(value = "/product/{id}/activation", method = RequestMethod.GET)
	@ResponseBody
	public String managePostProductActivation(@PathVariable int id) {
		Product product = productDAO.get(id);
		boolean isActive = product.isActive();
		product.setActive(!isActive);
		productDAO.update(product);
		return (isActive) ? "Product Dectivated Successfully!" : "Product Activated Successfully";
	}

	@RequestMapping(value = "/category", method = RequestMethod.POST)
	public String managePostCategory(@ModelAttribute("category") Category mCategory, HttpServletRequest request) {
		categoryDAO.add(mCategory);
		return "redirect:" + request.getHeader("Referer") + "?success=category";
	}

	@ModelAttribute("categories")
	public List<Category> modelCategories() {
		return categoryDAO.list();
	}

	@ModelAttribute("category")
	public Category modelCategory() {
		return new Category();
	}

}
