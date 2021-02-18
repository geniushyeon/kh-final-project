package kr.or.eutchapedia.movie.detail.repository;


import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import kr.or.eutchapedia.movie.detail.domain.MovieInfoVo;
import kr.or.eutchapedia.movie.detail.domain.StaffFilmoVo;
import kr.or.eutchapedia.movie.detail.domain.StaffInfoVo;

@Repository
@Mapper
public interface MovieDetailMapper {
	public MovieInfoVo selectMovieInfo(String movieDocId);
	public List<StaffInfoVo> selectStaffList(String movieDocId);
	public List<StaffFilmoVo> selectStaffFilmo(String staffId);
	
}
