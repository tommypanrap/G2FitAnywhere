package com.fitanywhere.announcement.model;

import java.sql.Date;
import java.util.List;
import java.util.Set;

public class AnnouncementService {

	AnnouncementHibernateDAOImpl announcementhibernate = new AnnouncementHibernateDAOImpl();
	
//	public AnnouncementVO addAnn(Integer crid, Timestamp anDate, Timestamp anEditDate, String anTitle, String anContent) {
//		AnnouncementVO announcementVO = new AnnouncementVO();
//		announcementVO.setCrId(crid);
//		announcementVO.setAnDate(anDate);
//		announcementVO.setAnEditDate(anEditDate);
//		announcementVO.setAnTitle(anTitle);
//		announcementVO.setAnContent(anContent);
//		dao.insert(announcementVO);
//		return announcementVO;
//	}
//	
//	public AnnouncementVO updateAnn(Integer anId , Integer crId, Timestamp anDate, Timestamp anEditDate, String anTitle, String anContent) {
//		AnnouncementVO announcementVO = new AnnouncementVO();
//		announcementVO.setAnId(anId);
//		announcementVO.setCrId(crId);
//		announcementVO.setAnDate(anDate);
//		announcementVO.setAnEditDate(anEditDate);
//		announcementVO.setAnTitle(anTitle);
//		announcementVO.setAnContent(anContent);
//		dao.update(announcementVO);
//		return announcementVO;
//	}
//	
//	public void deleteAnn(Integer anId) {
//		dao.delete(anId);
//	}
	
	public List<AnnouncementVO> getAll(){
		return announcementhibernate.getAll();
	}
	
	public AnnouncementVO getOneAnnouncement(Integer anId) {
		return announcementhibernate.findByPrimaryKey(anId);
	}
	
	}
