package util.cache;

import java.util.Collection;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

import util.Bean;


/**
 * 仿造Map接口
 * 实现缓存抽象接口
 * 缓存监控
 * by Walker
 */
public interface Cache<K> {
//  缓存监控接口
	/**
	 * 每一个缓存的键作为一条sql记录  hash, 键, 值, 修改时间, 过期时间, 命中次数, 值类型 map 1/list 2/base 0
	 */
	String[] table = {"HASHCODE", "KEY", "VALUE", "MTIME", "EXPIRE", "COUNT", "TYPE"};
	/**
	 * 查询键值缓存时间计数 list urls
	 */
	Map findCacheList(Bean args);
	
	
	/**
	 * 默认接口成员变量 static final
	 */
	public static final int interfaceDefaultStaticFinalInt = 0;
	
	
	
	
//具体缓存实现
	
    int size();
    boolean isStart();
    boolean isEmpty();
    boolean containsKey(K key);
    boolean containsValue(Object value);
    /**
     * 全量添加map作为缓存key-value
     */
//    <K,V> void putAll(Map<?,?> m); 
	void putAll(Map map);

    /**
     * 全量获取缓存key-value
     */
    Map getAll();
    
    void clear();
    /**
     * key集合
     */
    Set<K> keySet();
    /**
     * 值集合
     */
    Collection<Object> values();
   
    <V> V get(K key);
    <V> V get(K key, V defaultValue);
    <V> Cache put(K key, V value);
    /**
     * 缓存时间
     */
    <V> Cache put(K key, V value, long expiry);
    boolean remove(K key); 
    /**
     * 关闭缓存
     */
    void shutdown();
    /**
     * 开启缓存
     */
    void startup();
}
