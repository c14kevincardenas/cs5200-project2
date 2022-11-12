import pandas as pd 
import random


def get_data(filename):
    with open(filename) as f:
        lines = f.readlines()
        first_line = True
        for i, line in enumerate(lines):
            if first_line:
                first_line = False
            elif line.split() != []:
                if line.split()[0] == 'simSeconds':
                    seconds = float(line.split()[1])
                elif line.split()[0] == 'system.cpu.dcache.overallMissRate::total':
                    l1d_miss =  float(line.split()[1])
                elif line.split()[0] == 'system.cpu.icache.overallMissRate::total':
                    l1i_miss =  float(line.split()[1])
    return seconds, l1d_miss, l1i_miss, l2_miss


def get_inst_mix(filename, p):
    inst_mix = {}
    
    with open(filename) as f:
        lines = f.readlines()
        for line in lines:
            contents = line.split()
            # check if line has data
            if (len(contents) > 0) and (contents[0] != '----------'):
                # check if line is class of exec inst
                if contents[0].split('.')[-1].split('::')[0] == 'statExecutedInstType':
                    num_ops = int(contents[1])
                    if num_ops > 0:
                        op_type = contents[0].split('.')[-1].split('::')[-1]
                        if op_type != 'total':
                            if op_type not in inst_mix:
                                inst_mix[op_type] = [num_ops]
                            else:
                                inst_mix[op_type].append(num_ops)
    
    return inst_mix

def fill_data(data, time, reads, writes, l1d_miss, l1i_miss, part, cpu, fu, op_lat, pq):
    data['time'].append(time)
    data['reads'].append(reads)
    data['writes'].append(writes)
    data['l1d_miss'].append(l1d_miss)
    data['l1i_miss'].append(l1i_miss)
    data['part'].append(part)
    data['cpu'].append(cpu)
    data['fu'].append(fu)
    data['op_lat'].append(op_lat)
    data['pq'].append(pq)


# function to compile the data from part folders into a dictionary and return a dataframe
def make_df():
    # init parts of file structure
    pqs = ['linklist', 'minheap']
    parts = ['p1', 'p2', 'p3', 'p4', 'p5']
    fus = ['base', '6_1', '5_2', '4_3', '3_4', '2_5', '1_6']
    op_lats = ['2_4', '1_4', '2_2']
    
    # data dictionary for p3-p5
    data = {'time': [],
    		'reads': [],
    		'writes': [],
        'l1d_miss': [],
    		'l1i_miss': [],
    		'part': [],
    		'cpu': [],
    		'fu': [],
    		'op_lat': [],
        'pq': []
    	   }
	
    # init inst_mix list of dictionaries
    inst_mix = []
    
    # iterate through each pq
    for pq in pqs:
        # iterate through each part folder
        for p in parts:
            # construct the filename, get the time, fill the dictionary 'data'
            if p == 'p1':
                filename = 'output/' + p + '/' + pq + '-stats.txt'
                print(filename)
                # inst_mix.append(get_inst_mix('m5out/p1/linklist-stats.txt', p))
            elif p == 'p2':
                for n in [1000, 10000]:
                    filename = 'output/' + p + '/' + pq + '-n' + str(n) + '-stats.txt'
                    print(filename)
                    # inst_mix.append(get_inst_mix('m5out/p2/linklist-n1000-stats.txt', p))
            elif p == 'p3':
                for fu in fus:
                    if fu == 'base':
                        for n in [10, 1000, 10000]:
                           filename = 'output/' + p + '/'  + fu + '/' + pq + '-n' + str(n) + '-stats.txt'
                           print(filename)
                    else:
                        filename = 'output/' + p + '/' + fu + '/' + pq + '-stats.txt'
                        print(filename)
            
            elif p == 'p4':
                for op_lat in op_lats:
                    filename = 'output/' + p + '/' + op_lat + '/' + pq + '-stats.txt'
                    print(filename)
            
            else:
                for combo in fus + op_lats:
                    filename = 'output/' + p + '/' + combo + '/' + pq + '-stats.txt'
                    print(filename)

            
    
    # make fake data
    for key in data:
        if key == 'fu':
            data[key] = [random.choice(fus) for i in range(100)]
        elif key == 'op_lat':
            data[key] = [random.choice(op_lats) for i in range(100)]
        elif key == 'part':
            data[key] = [random.choice(parts) for i in range(100)]
        elif key == 'pq':
            data[key] = [random.choice(['linklist', 'minheap']) for i in range(100)]
        else: 
            data[key] = [random.randint(0,100) for i in range(100)]
    
    
    # make pandas dataframe
    df = pd.DataFrame.from_dict(data)
    # df.cpu = df.fus.map({'6_1':'6 IssueLat, 1 OpLat'})

		
    return df

if __name__ == '__main__':
    make_df()
    # inst_mix = get_inst_mix('m5out/p1/linklist-stats.txt', 'p1')