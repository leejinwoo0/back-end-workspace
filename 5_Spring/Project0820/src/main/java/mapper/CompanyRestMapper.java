package mapper;

import org.apache.ibatis.annotations.Mapper;

import com.kh.project.model.vo.CompanyRest;

@Mapper
public interface CompanyRestMapper {
	
	CompanyRest check(String id);
	CompanyRest login(CompanyRest vo);
	int signUp(CompanyRest vo);
	int update(CompanyRest vo);
	void delete(int no);

}
