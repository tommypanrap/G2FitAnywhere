package com.fitanywhere.announcement.model;

import java.util.List;


public interface AnnouncementDAO {
	public void insert(AnnouncementVO announcementVO);

	public void update(AnnouncementVO announcementVO);

	public void delete(Integer anId);

	public AnnouncementVO findByPrimaryKey(Integer anId);

	public List<AnnouncementVO> getAll();
}
