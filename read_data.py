import pandas as pd 


def get_seconds(filename):
    with open(filename) as f:
            lines = f.readlines()
            first_line = True
            for i, line in enumerate(lines):
                if first_line:
                    first_line = False
                else: 
                     if line.split()[0] == 'simSeconds':
                        return float(line.split()[1])


def get_instructions(filename):
	pass


def get_l1_misses(filename):
	pass


def fill_data(data, time, reads, writes, l1_miss, part, cpu, fu, op_lat):
    data['time'].append(time)
    data['reads'].append(reads)
    data['writes'].append(writes)
    data['l1_miss'].append(l1_miss)
    data['part'].append(part)
    data['cpu'].append(cpu)
    data['fu'].append(fu)
    data['op_lat'].append(op_lat)


# function to compile the data from part folders into a dictionary and return a dataframe
def get_data():
    pqs = ['null', 'linklist', 'minheap']
    parts = ['p1', 'p2', 'p3', 'p4', 'p5']
    fus = ['base', '6_1', '5_2', '4_3', '3_4', '2_5', '1_6']
    op_lats = ['2_4', '1_4', '2_2']
    
    
    data = {'time': [],
    		'reads': [],
    		'writes': [],
    		'l1_miss': [],
    		'part': [],
    		'cpu': [],
    		'fu': [],
    		'op_lat': []
    	   }
	
    # iterate through each pq
    for pq in pqs:
        # iterate through each part folder
        for p in parts:
            # construct the filename, get the time, fill the dictionary 'data'
            if p in ['p1', 'p2']:
                filename = 'output/' + p + '/' + pq + '_stats.txt'
                print(filename)
    				# time = get_seconds(filename)
                # reads, writes = get_instructions(filename)
                # l1_miss = get_l1_misses(filename)
    				# fill_data(data, time, reads, writes, l1_miss, p, 'TimingSimpleCPU', 'none', 'none')
            elif p == 'p3':
                for fu in fus:
                    filename = 'output/' + p + '/' + fu + '/' + pq + '_stats.txt'
                    print(filename)
            
            elif p == 'p4':
                for op_lat in op_lats:
                    filename = 'output/' + p + '/' + op_lat + '/' + pq + '_stats.txt'
                    print(filename)
            
            else:
                for combo in fus + op_lats:
                    filename = 'output/' + p + '/' + combo + '/' + pq + '_stats.txt'
                    print(filename)

            

# make pandas dataframe
# 	df = pd.DataFrame.from_dict(data)
# 	df.cpu = df.fus.map({'6_1':'6 IssueLat, 1 OpLat'})

		
    # return df

if __name__ == '__main__':
    get_data()