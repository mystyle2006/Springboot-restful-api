package com.restful.mapper;

import java.util.ArrayList;

import com.restful.domain.BoardVO;

public interface BoardMapper {

	public ArrayList<BoardVO> boardSelect() throws Exception;
	public BoardVO boardView(int id) throws Exception;
	public void boardInsert(BoardVO bvo) throws Exception;
	public void boardUpdate(BoardVO bvo) throws Exception;
	public void boardDelete(int id) throws Exception;
}
