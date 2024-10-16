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
    public void addReview(Review review) throws Exception {
        if (review.getId() == null || review.getId().isEmpty()) {
            throw new Exception("회원만 리뷰를 작성할 수 있습니다.");
        }
        reviewMapper.insertReview(review);
    }

    // 회원만 리뷰 수정 가능
    @Transactional
    public void updateReview(Review review) throws Exception {
        if (review.getId() == null || review.getId().isEmpty()) {
            throw new Exception("회원만 리뷰를 수정할 수 있습니다.");
        }
        Review existingReview = reviewMapper.selectReviewById(review.getReviewCode());
        if (existingReview == null || !existingReview.getId().equals(review.getId())) {
            throw new Exception("본인만 리뷰를 수정할 수 있습니다.");
        }
        reviewMapper.updateReview(review);
    }

    // 회원만 리뷰 삭제 가능
    @Transactional
    public void deleteReview(int reviewCode, String id) throws Exception {
        Review review = reviewMapper.selectReviewById(reviewCode);
        if (review == null) {
            throw new Exception("존재하지 않는 리뷰입니다.");
        }
        if (!review.getId().equals(id)) {
            throw new Exception("본인만 리뷰를 삭제할 수 있습니다.");
        }
        reviewMapper.deleteReview(reviewCode, id);
    }

	public Review getReviewById(int reviewCode) {
		// TODO Auto-generated method stub
		return null;
	}
}
