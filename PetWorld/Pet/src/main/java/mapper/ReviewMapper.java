package mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.kh.pet.model.vo.Review;

@Mapper
public interface ReviewMapper {

	// 리뷰 목록 보여주기 회원유무 상관없이
	  List<Review> selectAllReviews();
	
	// 리뷰작성 회원만
	  void insertReview(Review review);
	
	
	
	// 리뷰 삭제
	  void deleteReview(int reviewCode, String id);
	
	
	// 리뷰 수정
	  void updateReview(Review review);

	Review selectReviewById(int reviewCode);
}