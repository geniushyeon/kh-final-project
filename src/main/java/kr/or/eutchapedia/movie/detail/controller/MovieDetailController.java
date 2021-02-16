package kr.or.eutchapedia.movie.detail.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RequestMapping("/movie")
@RestController
public class MovieDetailController {
	
	@RequestMapping("/detail")
	public ModelAndView movieDetail() {
		ModelAndView mv = new ModelAndView("/user/movie/detail/movie_detail");
		
		return mv;
	}
	
	@RequestMapping("/detail/overview")
	public ModelAndView movieDetailOverview() {
		ModelAndView mv = new ModelAndView();
		
		mv.setViewName("/user/movie/detail/movie_more_info");
		
		return mv;
	}
	
	@RequestMapping("/detail/staff")
	public ModelAndView staffDetail() {
		ModelAndView mv = new ModelAndView();
		
		mv.setViewName("/user/movie/detail/staff_detail");
		
		return mv;
	}
	
	@RequestMapping("/comment/overview")
	public ModelAndView commentOverview() {
		ModelAndView mv = new ModelAndView();
		
		mv.setViewName("/user/movie/detail/rating_more");
		
		return mv;
	}
}