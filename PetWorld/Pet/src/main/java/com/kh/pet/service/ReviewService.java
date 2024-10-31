package com.kh.pet.service;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import com.kh.pet.model.vo.Review;
import mapper.ReviewMapper;
import java.util.List;

@Service
public class ReviewService {

    @Autowired(required = false)
    private ReviewMapper reviewMapper;
    
    

    // 회원 유무 상관없이 리뷰 목록 보기
    public List<Review> getAllReviews() {
        return reviewMapper.selectAllReviews();
    }

    // 회원만 리뷰 작성 가능
    @Transactional
    public void addReview(Review review) throws RuntimeException {
    	
        if (review.getId() == null || review.getId().isEmpty()) {
        	
            throw new RuntimeException("회원만 리뷰를 작성할 수 있습니다.");
        }
        reviewMapper.insertReview(review);
    }

    

}
