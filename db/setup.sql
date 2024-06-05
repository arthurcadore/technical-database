USE datasheet;

CREATE TABLE access_point (
	    id INT NOT NULL AUTO_INCREMENT,
	    name_model_itb VARCHAR(50) NOT NULL,
	    name_model_h3c VARCHAR(50) NOT NULL,
	    name_serie VARCHAR(50) NOT NULL,
	    name_fw VARCHAR(50) NOT NULL,
	    name_fw_last_ver VARCHAR(50) NOT NULL,
		is_2_4Ghz INT NOT NULL, 
		is_5GhZ INT NOT NULL, 
		is_6Ghz INT NOT NULL, 
		nominal_rate_2_4Ghz INT NULL,
		nominal_rate_5Ghz INT NULL,
		nominal_rate_6Ghz INT NULL,
		mimo_class_2_4Ghz INT NULL,
		mimo_class_5Ghz INT NULL,
		mimo_class_6Ghz INT NULL,
		rf_power_total_2_4Ghz INT NULL, 
		rf_power_total_5Ghz INT NULL, 
		rf_power_total_6Ghz INT NULL, 
		rf_power_chain_2_4Ghz INT NULL, 
		rf_power_chain_5Ghz INT NULL, 
		rf_power_chain_6Ghz INT NULL, 
		phy_num_antennas_2_4G INT NULL,
		phy_num_antennas_5Ghz INT NULL,
		phy_num_antennas_6Ghz INT NULL,
		antenna_gain_2_4Ghz INT NULL,
		antenna_gain_5Ghz INT NULL,
		antenna_gain_6Ghz INT NULL,
		antenna_type_2_4Ghz VARCHAR(50) NULL,
		antenna_type_5Ghz VARCHAR(50) NULL,
		antenna_type_6Ghz VARCHAR(50) NULL,
		antena_eff_2_4Ghz INT NULL, 
		antena_eff_5Ghz INT NULL, 
		antena_eff_6Ghz INT NULL, 
		vswr_2_4Ghz INT NULL, 
		vswr_5Ghz INT NULL, 
		vswr_6Ghz INT NULL, 
		coverage_2_4Ghz INT NULL,
		coverage_5Ghz INT NULL,
		coverage_6Ghz INT NULL,
		standard_2_4Ghz VARCHAR(50) NULL,
		standard_5Ghz VARCHAR(50) NULL,
		standard_6Ghz VARCHAR(50) NULL,
		f_range_2_4Ghz VARCHAR(50) NULL,
		f_range_5Ghz VARCHAR(50) NULL,
		f_range_6Ghz VARCHAR(50) NULL,
		bandwidth_2_4Ghz VARCHAR(50) NULL,
		bandwidth_5Ghz VARCHAR(50) NULL,
		bandwidth_6Ghz VARCHAR(50) NULL,
		max_clients_2_4Ghz INT NULL,
		max_clients_5Ghz INT NULL,
		max_clients_6Ghz INT NULL,
		max_bssid INT NULL,
		ble_support INT NULL,
		rfid_support INT NULL,
		zigbee_support INT NULL,
		flash_memory INT NULL,
		ram_memory INT NULL
	    PRIMARY KEY (id)
);

-- Crie o usuário
CREATE USER 'pythonConnector'@'%' IDENTIFIED BY 'Python@connect123';

-- Conceda privilégios ao usuário no banco de dados currentTS
GRANT ALL PRIVILEGES ON currentTS.* TO 'pythonConnector'@'%';

-- Atualize os privilégios
FLUSH PRIVILEGES;
