package kr.or.eutchapedia.mypage.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;
import kr.or.eutchapedia.mypage.entity.MemberVo;
import kr.or.eutchapedia.mypage.entity.StarRatingForMainVo;
import kr.or.eutchapedia.mypage.entity.WannaWatchVo;
import kr.or.eutchapedia.mypage.service.MypageService;

@RequestMapping("/mypage")
@RestController
public class MypageMemberController {
	
	@Autowired
	MypageService service;
	
	@Autowired
	ServletContext ctx;
	
		
	@RequestMapping("/ratedmovies_member")
	public ModelAndView mypageratedmovies(@RequestParam String id, @RequestParam int sort) {
		ModelAndView mv = new ModelAndView();
		
		String sortTitle="";
		
		System.out.println(sort);
		List <StarRatingForMainVo> list = new ArrayList<StarRatingForMainVo>();
		List<Map<String,Object>> graphMap = new ArrayList<Map<String, Object>>();
		graphMap = service.getStarNumDesc(id);
	
		List<StarRatingForMainVo> five = new ArrayList<>();
		List<StarRatingForMainVo> fourdot = new ArrayList<>();
		List<StarRatingForMainVo> four = new ArrayList<>();
		List<StarRatingForMainVo> threedot = new ArrayList<>();
		List<StarRatingForMainVo> three = new ArrayList<>();
		List<StarRatingForMainVo> twodot = new ArrayList<>();
		List<StarRatingForMainVo> two = new ArrayList<>();
		List<StarRatingForMainVo> onedot = new ArrayList<>();
		List<StarRatingForMainVo> one = new ArrayList<>();
		List<StarRatingForMainVo> dot = new ArrayList<>();
		
		switch (sort) {
		case 1 :
			list = service.getratinginfo1(id);
			sortTitle = "가나다순";
			break;
		case 2 :
			list = service.getratinginfo2(id);
			sortTitle = "구작순";
			break;
		case 3 :
			list = service.getratinginfo3(id);
			sortTitle = "신작순";
			break;
		case 4 :
			list = service.getratinginfo4(id);
			sortTitle = "러닝타임순";
			break;
		}
		

		for(int s=0; s<list.size(); s++) { 
			if(list.get(s).getStarRating().equals("5")) {
				five.add(list.get(s));
			}
			if(list.get(s).getStarRating().equals("4.5")) {
				fourdot.add(list.get(s));
			}
			if(list.get(s).getStarRating().equals("4")) {
				four.add(list.get(s));
			}
			if(list.get(s).getStarRating().equals("3.5")) {
				threedot.add(list.get(s));
			}
			if(list.get(s).getStarRating().equals("3")) {
				three.add(list.get(s));
			}
			if(list.get(s).getStarRating().equals("2.5")) {
				twodot.add(list.get(s));
			}
			if(list.get(s).getStarRating().equals("2")) {
				two.add(list.get(s));
			}
			if(list.get(s).getStarRating().equals("1.5")) {
				onedot.add(list.get(s));
			}
			if(list.get(s).getStarRating().equals("1")) {
				one.add(list.get(s));
			}
			if(list.get(s).getStarRating().equals("0.5")) {
				dot.add(list.get(s));
			}
		}
	
		
		mv.addObject("five", five);
		mv.addObject("fourdot", fourdot);
		mv.addObject("four", four);
		mv.addObject("threedot", threedot);
		mv.addObject("three", three);
		mv.addObject("twodot", twodot);
		mv.addObject("two", two);
		mv.addObject("onedot", onedot);
		mv.addObject("one", one);
		mv.addObject("dot", dot);

		String key = list.get(0).getMemberEmail();
		
		mv.addObject("sortTitle", sortTitle);
		mv.addObject("id", key);
		mv.addObject("list", list);
		mv.addObject("point", graphMap);
		mv.setViewName("/user/mypage/mypage_ratedmoviesfinal_member");
		return mv;
	}
	
	@RequestMapping(value="/wannawatch_member", method= RequestMethod.GET)
	public ModelAndView mypageiwantosee(@RequestParam String id, @RequestParam int sort) {
		ModelAndView mv = new ModelAndView();
		
		System.out.println( "아이디는" +id);
		System.out.println( "솔트값은" +sort);
		String sortTitle="";
		
		List <WannaWatchVo> list = new ArrayList<WannaWatchVo>();
		
		switch (sort) {
		case 1 :
			list = service.wannawatch1(id);
			sortTitle = "가나다순";
			break;
		case 2 :
			list = service.wannawatch2(id);
			sortTitle = "신작순";
			break;
		case 3 :
			list = service.wannawatch3(id);
			sortTitle = "구작순";
			break;
		case 4 :
			list = service.wannawatch4(id);
			sortTitle = "담은순";
			break;
		}
		
		String key = list.get(0).getMemberEmail();
		
		mv.addObject("id", key);
		mv.addObject("sortTitle", sortTitle);
		mv.addObject("list", list);
		mv.setViewName("/user/mypage/mypage_iwanttosee_member");
		return mv;
	}
	
	
	
	@RequestMapping(value="/index_member", method= RequestMethod.GET)
	public ModelAndView mypagemember(String id) {
		ModelAndView mv = new ModelAndView();
		
		System.out.println(id);
		List<WannaWatchVo> ww = new ArrayList<WannaWatchVo>();
		List<StarRatingForMainVo> sr = new ArrayList<StarRatingForMainVo>();
		MemberVo vo = new MemberVo();
		
		Map<String,Object> mostRatedStar = new HashMap<String,Object>();
		List<Map<String,Object>> graphMap = new ArrayList<Map<String, Object>>();
		List<Map<String,Object>> doughnutMap = new ArrayList<Map<String, Object>>();
		
		vo = service.getMemberinfo(id);
		ww = service.wannawatch(id);
		sr = service.getratinginfo(id);
		mostRatedStar = service.getmostRatedStar(id);
		graphMap = service.getStarNum(id);
		doughnutMap = service.getdoughnutNum(id);
		
		float z = 0;
		float [] starValue = new float[10];
		int [] staramount = new int[10];
		
		float point1 = (float) 0;
		for(int i=0; i<starValue.length; i++) {
			point1 += 0.5;
			starValue[i] = point1;
			z= starValue[i];
			
			System.out.println("현재z값은:" +z);
			for(int k=0; k<graphMap.size(); k++) {
					if(z == (float)graphMap.get(k).get("starRating")) {
						
						staramount[i] = (int) graphMap.get(k).get("starCount");
					}
			}
			System.out.println(staramount[i]);
		}
		
	
		for(int j=0; j<staramount.length; j++) {
			
			System.out.println(staramount[j]);
		}
		
		// 보고싶어요 개수
		int wannacount  = ww.size();

		// 별점영역필요로직
		int ratedStarNum = sr.size(); //평가개수 
		
		float avg = 0; 
		float point = 0;
		float pointsum = 0;
		
		for(int i=0; i<sr.size(); i++) {
			point = Float.parseFloat(sr.get(i).getStarRating());
			pointsum += point;
		}
		
		avg = pointsum / ratedStarNum; //별점평균
		
		String avg2 = String.format("%.2f", avg); //별점평균 소수점 두자리까지 표시
		
		// 별점개수뽑아보자
		for(int i=0; i<graphMap.size(); i++) {
			
		}
		
		for(int i=0; i<sr.size(); i++) {
			point = Float.parseFloat(sr.get(i).getStarRating());
			pointsum += point;
		}
		
        // 영화감상시간계산로직
		int sum=0; 
		int time=0;
		
		for(int i=0; i<sr.size(); i++) {
			time = Integer.parseInt(sr.get(i).getMovieRunningTime());
			sum += time;
		}
		int hour = sum / 60;
		int minute = sum % 60; 
		
//		System.out.println("포토유알엘" +vo.getMemberPhoto());
		
		int size = ww.size();
		int ratesize = sr.size();
		
		mv.addObject("staramount", staramount);
		mv.addObject("size", size);
		mv.addObject("ratesize", ratesize);
		mv.addObject("member", vo);
		mv.addObject("wannawatch", ww);
		mv.addObject("star", sr);
		mv.addObject("hour", hour);
		mv.addObject("minute", minute);
		mv.addObject("wannacount", wannacount);
		mv.addObject("ratedStarNum", ratedStarNum);
		mv.addObject("mostRatedStar", mostRatedStar);
		mv.addObject("avg", avg2);
		mv.addObject("graphMap", graphMap);
		mv.addObject("doughnutMap", doughnutMap);
		mv.setViewName("/user/mypage/mypageMember");
		return mv;
		
	}
	
	@RequestMapping(value="/starviewmore_member", method=RequestMethod.GET)
	public ModelAndView mypagestarviewmore(@RequestParam String id,int sort) {
		ModelAndView mv = new ModelAndView();
		String fk= id;
		List<StarRatingForMainVo> list = new ArrayList<StarRatingForMainVo>();
		list = service.getratinginfo1(id);
		
		List<StarRatingForMainVo> five = new ArrayList<>();
		List<StarRatingForMainVo> fourdot = new ArrayList<>();
		List<StarRatingForMainVo> four = new ArrayList<>();
		List<StarRatingForMainVo> threedot = new ArrayList<>();
		List<StarRatingForMainVo> three = new ArrayList<>();
		List<StarRatingForMainVo> twodot = new ArrayList<>();
		List<StarRatingForMainVo> two = new ArrayList<>();
		List<StarRatingForMainVo> onedot = new ArrayList<>();
		List<StarRatingForMainVo> one = new ArrayList<>();
		List<StarRatingForMainVo> dot = new ArrayList<>();
		
		for(int s=0; s<list.size(); s++) { 
			if(list.get(s).getStarRating().equals("5")) {
				five.add(list.get(s));
			}
			if(list.get(s).getStarRating().equals("4.5")) {
				fourdot.add(list.get(s));
			}
			if(list.get(s).getStarRating().equals("4")) {
				four.add(list.get(s));
			}
			if(list.get(s).getStarRating().equals("3.5")) {
				threedot.add(list.get(s));
			}
			if(list.get(s).getStarRating().equals("3")) {
				three.add(list.get(s));
			}
			if(list.get(s).getStarRating().equals("2.5")) {
				twodot.add(list.get(s));
			}
			if(list.get(s).getStarRating().equals("2")) {
				two.add(list.get(s));
			}
			if(list.get(s).getStarRating().equals("1.5")) {
				onedot.add(list.get(s));
			}
			if(list.get(s).getStarRating().equals("1")) {
				one.add(list.get(s));
			}
			if(list.get(s).getStarRating().equals("0.5")) {
				dot.add(list.get(s));
			}
		}
		
		float point =0;
		
		switch (sort) {
		case 1 :
			list = five;
			point = (float) 5.0;
			break;
		case 2 :
			list = fourdot;
			point = (float) 4.5;
			break;
		case 3 :
			list = four;
			point = (float) 4.0;
			break;
		case 4 :
			list = threedot;
			point = (float) 3.5;
			break;
		case 5 :
			list = three;
			point = (float) 3.0;
			break;
		case 6 :
			list = twodot;
			point = (float) 2.5;
			break;
		case 7 :
			list = two;
			point = (float) 2.0;
			break;
		case 8 :
			list = onedot;
			point = (float) 1.5;
			break;
		case 9 :
			list = one;
			point = (float) 1.0;
			break;
		case 10 :
			list = dot;
			point = (float) 0.5;
			break;
		}
		
		mv.addObject("fk", fk);
		mv.addObject("point", point);
		mv.addObject("list", list);
		mv.setViewName("/user/mypage/mypage_starviewmore_member");
		return mv;
	}
	
}




