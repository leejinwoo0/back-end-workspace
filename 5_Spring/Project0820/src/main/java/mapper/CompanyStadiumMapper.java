package mapper;

import org.apache.ibatis.annotations.Mapper;

import com.kh.project.model.vo.CompanyStadium;

@Mapper
public interface CompanyStadiumMapper {
	
	CompanyStadium check(String id);
	CompanyStadium login(CompanyStadium vo);
	int signUp(CompanyStadium vo);
	int update(CompanyStadium vo);
	void delete (int no);

}
