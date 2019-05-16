import React from "react";
import { View, Text, StyleSheet, Platform } from "react-native";
import { Header, Avatar, Icon } from 'react-native-elements'

export class HeaderInfo extends React.Component{
    constructor(props) {
        super(props);
        this.state = {
            isMain: 'flex',
            nextPage: ''
        }
    }

    componentDidMount(){
        if(this.props.headerTitle == "메인" || this.props.type == "Team"){
            this.setState({isMain: 'none'});
        }
        else{
            this.setState({isMain: 'flex'});
        }
    }

    nextPage = () => {
        if(!global.loginStatus)
            this.props.navigation.navigate("Login");
        else
            this.props.navigation.navigate("MyPage");
    }

    render(){
        return(
            <View>
                <Header
                    containerStyle={{marginTop: Platform.OS === 'ios' ? 0 : - 20}}
                    innerContainerStyles={{flexDirection: 'row'}}
                    backgroundColor='#f40057'
                    leftComponent={<Icon
                                        name="user-circle"
                                        type='font-awesome'
                                        size={30}
                                        color='white'
                                        containerStyle={{marginLeft: 10}}
                                        underlayColor={"#f40057"}
                                        onPress={this.nextPage}
                                    />}
                    centerComponent={ <View style={{alignItems: 'center'}}>
                                        <Text style={styles.title}>{this.props.headerTitle}</Text>
                                        </View>}
                    rightComponent={<Icon name='ios-arrow-round-back' 
                                        size={40} 
                                        type='ionicon' 
                                        color={'#fff'} 
                                        iconStyle={{marginRight: 10}}
                                        underlayColor={'#f40057'}
                                        onPress={() => this.props.navigation.goBack()}
                                        containerStyle={{display: this.state.isMain}}/>}
                />
            </View>
        );
    }
}


const styles = StyleSheet.create({
    title: {
        justifyContent: 'center',
        color: '#fff',
        alignContent:'center',
        textAlignVertical: 'center',
        fontSize: 20
    }
});

