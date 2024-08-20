package mapper;

import org.apache.ibatis.annotations.Mapper;

import com.kh.project.model.vo.CompanyAccom;

@Mapper
public interface CompanyAccomMapper {
	
	CompanyAccom check(String id);
	CompanyAccom login(CompanyAccom vo);
	int signUp(CompanyAccom vo);
	int update(CompanyAccom vo);
	void delete(int no);

}
