package kr.ac.workproject.service;

import java.util.List;

import kr.ac.workproject.model.Work;

public interface WorkService {

	List<Work> workList();

	List<Work> searchList(String item);

	void add(Work workItem);




}
